import learning.DiskonClassifier;
import learning.PreProcess;
import twitter4j.Status;
import util.Scrapper;

import java.util.ArrayList;

/**
 * Created by Tifani on 11/24/2016.
 */
public class EkstraksiDiskon {

    public static void preprocessData() {
//        PreProcess.processTSV("data/diskon.tsv", PreProcess.TYPE_KLASIFIKASI_DISKON);
        PreProcess.saveArff("data/processed/diskon/", "data/processed/diskon.arff");

//        PreProcess.processTSV("data/kategori.tsv", PreProcess.TYPE_KATEGORI);
        PreProcess.saveArff("data/processed/kategori/", "data/processed/kategori.arff");
    }

    public static void main(String[] args) throws Exception {
//        PreProcess.saveArff("data/processed/diskon/", "data/processed/diskon.arff");

//         preprocessData();
        Scrapper.config();
        ArrayList<Status> tweets = Scrapper.getTweets("diskon", 100);
        int i = 1;
        for(Status tweet : tweets) {
            boolean isDiskon = DiskonClassifier.classifyTweet(DiskonClassifier.PATH_MODEL_KLASIFIKASI, tweet);
            System.out.print("Tweet " + i + ": ");
            if (isDiskon) {
                 System.out.println("[DISKON]");
            } else {
                 System.out.println("[BUKAN DISKON] ");
            }
            System.out.println("@" + tweet.getUser().getScreenName() + ": " + tweet.getText());
            i++;
        }
    }
}
