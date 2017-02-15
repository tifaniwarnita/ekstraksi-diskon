import learning.DiskonCategorizer;
import learning.DiskonClassifier;
import learning.DiskonExtraction;
import learning.PreProcess;
import twitter4j.Status;
import util.Scrapper;
import weka.core.Instances;

import java.io.IOException;
import java.util.ArrayList;
import database.DatabaseHelper;
import database.Diskon;
import java.sql.Timestamp;
import twitter4j.MediaEntity;

/**
 * Created by Tifani on 11/24/2016.
 */
public class EkstraksiDiskon {
    private static final DatabaseHelper dbHelper = new DatabaseHelper();

    public static void preprocessData() {
        PreProcess.processTSV("data/diskon.tsv", PreProcess.TYPE_KLASIFIKASI_DISKON);
        PreProcess.saveArff("data/processed/diskon/", "data/processed/diskon.arff");

        PreProcess.readDictionary();
        PreProcess.processTSV("data/kategori.tsv", PreProcess.TYPE_KATEGORI);
        PreProcess.saveArff("data/processed/kategori/", "data/processed/kategori.arff");
    }

    public static void buildClusterer() throws Exception {
        // Diskon classifier
        Instances dataDiskon = DiskonClassifier.loadArff("data/processed/diskon.arff");
        DiskonClassifier.buildClassifier("model/diskon-model.model", dataDiskon);

        // Kategori classifier
        Instances dataKategori = DiskonClassifier.loadArff("data/processed/kategori.arff");
        DiskonClassifier.buildClassifier("model/kategori-model.model", dataKategori);
    }

    public static void main(String[] args) throws Exception {
        Scrapper.config();
//        while (true) {
            ArrayList<Status> tweets = Scrapper.getTweets("diskon", 1000);
            int i = 1;
            for(Status tweet : tweets) {
                boolean isDiskon = DiskonClassifier.classifyTweet(tweet);
                System.out.print("Tweet " + i + ": ");
                if (isDiskon) {
                    String categoryname = "";
                    System.out.print("[DISKON]: ");
                    int category = DiskonCategorizer.categorizeTweet(tweet);
                    switch (category) {
                        case DiskonCategorizer.ELEKTRONIK:
                            categoryname = "Elektronik";
                            System.out.println(categoryname);
                            break;
                        case DiskonCategorizer.FASHION:
                            categoryname = "Fashion";
                            System.out.println(categoryname);
                            break;
                        case DiskonCategorizer.HIBURAN:
                            categoryname = "Hiburan";
                            System.out.println(categoryname);
                            break;
                        case DiskonCategorizer.KECANTIKAN:
                            categoryname = "Kecantikan & Kesehatan";
                            System.out.println(categoryname);
                            break;
                        case DiskonCategorizer.KULINER:
                            categoryname = "Kuliner";
                            System.out.println(categoryname);
                            break;
                        case DiskonCategorizer.LAIN_LAIN:
                            categoryname = "Lain-lain";
                            System.out.println(categoryname);
                            break;
                        case DiskonCategorizer.OTOMOTIF:
                            categoryname = "Otomotif";
                            System.out.println(categoryname);
                            break;
                        case DiskonCategorizer.RUMAH_TANGGA:
                            categoryname = "Rumah Tangga";
                            System.out.println(categoryname);
                            break;
                        case DiskonCategorizer.WISATA:
                            categoryname = "Wisata & Perjalanan";
                            System.out.println(categoryname);
                            break;
                    }
                    String username = tweet.getUser().getName();
                    String screenname = tweet.getUser().getScreenName();
                    String avatar   = tweet.getUser().getProfileImageURL();
                    String text = tweet.getText();
                    Timestamp createdAt = new java.sql.Timestamp(tweet.getCreatedAt().getTime());
                    String media = "-";
                    if (tweet.getMediaEntities().length > 0) {
                        for (MediaEntity mediaEntity : tweet.getMediaEntities()) {
                            media = mediaEntity.getMediaURL();
                        }
                    }

                    System.out.println(username);
                    System.out.println("@" + screenname + ": " + tweet.getText());

                    String diskon = "-", harga = "-", tanggal = "-", pembayaran = "-", voucher = "-";
                    ArrayList<String> extract;
                    extract = DiskonExtraction.extractInfo(tweet, DiskonExtraction.DISKON);
                    if (extract.size() > 0) {
                        System.out.print("Diskon        : ");
                        DiskonExtraction.printExtractedInfo(extract);
                    }
                    for (int j=0; j<extract.size(); j++) {
                        if (j==0) {
                            diskon = new String(extract.get(j));
                        } else {
                            diskon += ";" + extract.get(j);
                        }
                    }

                    extract = DiskonExtraction.extractInfo(tweet, DiskonExtraction.HARGA);
                    if (extract.size() > 0) {
                        System.out.print("Harga         : ");
                        DiskonExtraction.printExtractedInfo(extract);
                    }
                    for (int j=0; j<extract.size(); j++) {
                        if (j==0) {
                            harga = new String(extract.get(j));
                        } else {
                            harga += ";" + extract.get(j);
                        }
                    }

                    extract = DiskonExtraction.extractInfo(tweet, DiskonExtraction.TANGGAL);
                    if (extract.size() > 0) {
                        System.out.print("Tanggal       : ");
                        DiskonExtraction.printExtractedInfo(extract);
                    }
                    for (int j=0; j<extract.size(); j++) {
                        if (j==0) {
                            tanggal = new String(extract.get(j));
                        } else {
                            tanggal += ";" + extract.get(j);
                        }
                    }

                    extract = DiskonExtraction.extractInfo(tweet, DiskonExtraction.CARA_PEMBAYARAN);
                    if (extract.size() > 0) {
                        System.out.print("Pembayaran    : ");
                        DiskonExtraction.printExtractedInfo(extract);
                    }
                    for (int j=0; j<extract.size(); j++) {
                        if (j==0) {
                            pembayaran = new String(extract.get(j));
                        } else {
                            pembayaran += ";" + extract.get(j);
                        }
                    }

                    extract = DiskonExtraction.extractInfo(tweet, DiskonExtraction.KODE_VOUCHER);
                    if (extract.size() > 0) {
                        System.out.print("Kode Voucher  : ");
                        DiskonExtraction.printExtractedInfo(extract);
                    }
                    for (int j=0; j<extract.size(); j++) {
                        if (j==0) {
                            voucher = new String(extract.get(j));
                        } else {
                            voucher += ";" + extract.get(j);
                        }
                    }

                    dbHelper.insertTweetByCategoryName(categoryname, new Diskon(0, 0, username, screenname, avatar, text, createdAt,
                            diskon, harga, media, tanggal, pembayaran, voucher));
                } else {
                    System.out.println("BUKAN DISKON ==> @" + tweet.getUser().getScreenName() + ": " + tweet.getText());
                }
                System.out.println();
                i++;
            }
//        }
    }
}
