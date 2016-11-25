package learning;

import java.util.ArrayList;

/**
 * Created by Tifani on 11/25/2016.
 */
public class FeatureExtraction {

    public static String normalizeTweet(String username, String fullname, String text) {
        String result = PreProcess.normalizeText(username);
        result += " " + PreProcess.normalizeText(fullname);
        ArrayList<String> terms = PreProcess.run(text);
        for(String term : terms) {
            result += " " + term;
        }
        return result;
    }
}
