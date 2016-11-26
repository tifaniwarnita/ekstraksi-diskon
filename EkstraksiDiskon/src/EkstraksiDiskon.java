import learning.DiskonCategorizer;
import learning.DiskonClassifier;
import learning.DiskonExtraction;
import learning.PreProcess;
import twitter4j.Status;
import util.Scrapper;
import weka.core.Instances;

import java.io.IOException;
import java.util.ArrayList;

/**
 * Created by Tifani on 11/24/2016.
 */
public class EkstraksiDiskon {

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
        ArrayList<Status> tweets = Scrapper.getTweets("diskon", 50);
        int i = 1;
        for(Status tweet : tweets) {
            boolean isDiskon = DiskonClassifier.classifyTweet(tweet);
            System.out.print("Tweet " + i + ": ");
            if (isDiskon) {
                System.out.print("[DISKON]: ");
                int category = DiskonCategorizer.categorizeTweet(tweet);
                switch (category) {
                    case DiskonCategorizer.ELEKTRONIK:
                        System.out.println("Elektronik");
                        break;
                    case DiskonCategorizer.FASHION:
                        System.out.println("Fashion");
                        break;
                    case DiskonCategorizer.HIBURAN:
                        System.out.println("Hiburan");
                        break;
                    case DiskonCategorizer.KECANTIKAN:
                        System.out.println("Kecantikan dan Kesehatan");
                        break;
                    case DiskonCategorizer.KULINER:
                        System.out.println("Kuliner");
                        break;
                    case DiskonCategorizer.LAIN_LAIN:
                        System.out.println("Lain-lain");
                        break;
                    case DiskonCategorizer.OTOMOTIF:
                        System.out.println("Otomotif");
                        break;
                    case DiskonCategorizer.RUMAH_TANGGA:
                        System.out.println("Rumah Tangga");
                        break;
                    case DiskonCategorizer.WISATA:
                        System.out.println("Wisata");
                        break;
                }
                System.out.println("@" + tweet.getUser().getScreenName() + ": " + tweet.getText());

                ArrayList<String> extract;
                extract = DiskonExtraction.extractInfo(tweet, DiskonExtraction.DISKON);
                if (extract.size() > 0) {
                    System.out.print("Diskon        : ");
                    DiskonExtraction.printExtractedInfo(extract);
                }

                extract = DiskonExtraction.extractInfo(tweet, DiskonExtraction.HARGA);
                if (extract.size() > 0) {
                    System.out.print("Harga         : ");
                    DiskonExtraction.printExtractedInfo(extract);
                }

                extract = DiskonExtraction.extractInfo(tweet, DiskonExtraction.TANGGAL);
                if (extract.size() > 0) {
                    System.out.print("Tanggal       : ");
                    DiskonExtraction.printExtractedInfo(extract);
                }

                extract = DiskonExtraction.extractInfo(tweet, DiskonExtraction.CARA_PEMBAYARAN);
                if (extract.size() > 0) {
                    System.out.print("Pembayaran    : ");
                    DiskonExtraction.printExtractedInfo(extract);
                }

                extract = DiskonExtraction.extractInfo(tweet, DiskonExtraction.KODE_VOUCHER);
                if (extract.size() > 0) {
                    System.out.print("Kode Voucher  : ");
                    DiskonExtraction.printExtractedInfo(extract);
                }
            } else {
                System.out.println("BUKAN DISKON ==> @" + tweet.getUser().getScreenName() + ": " + tweet.getText());
            }
            System.out.println();
            i++;
        }
    }
}
