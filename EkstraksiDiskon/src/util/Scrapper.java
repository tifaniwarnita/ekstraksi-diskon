package util;

import twitter4j.*;
import twitter4j.conf.ConfigurationBuilder;

import java.io.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;

/**
 * Created by Tifani on 11/16/2016.
 */
public class Scrapper {
    public static Twitter twitter = null;
    private static long firstID = Long.MIN_VALUE;

    public static void config() {
        ConfigurationBuilder cb = new ConfigurationBuilder();
        cb.setDebugEnabled(true)
                .setOAuthConsumerKey(Constants.TWTTER_CONSUMER_KEY)
                .setOAuthConsumerSecret(Constants.TWITTER_CONSUMER_SECRET)
                .setOAuthAccessToken(Constants.TWITTER_ACCESS_TOKEN)
                .setOAuthAccessTokenSecret(Constants.TWITTER_TOKEN_SECRET);
        TwitterFactory tf = new TwitterFactory(cb.build());
        twitter = tf.getInstance();
    }

    public static ArrayList<Status> getTweets(String searchQuery, int numberOfTweets) throws TwitterException {
        Query query = new Query(searchQuery);
        long lastID = Long.MAX_VALUE;
        ArrayList<Status> tweets = new ArrayList<Status>();
        boolean retrieve = true;

        while (tweets.size () < numberOfTweets && retrieve) {
            if (numberOfTweets - tweets.size() > 100) {
                query.setCount(100);
            } else {
                query.setCount(numberOfTweets - tweets.size());
            }
            QueryResult result = twitter.search(query);
            tweets.addAll(result.getTweets());
            System.out.println("Gathered " + tweets.size() + " tweets");
            for (Status t: tweets) {
                if(t.getId() < lastID) lastID = t.getId();
                if(t.getId() > firstID) {
                    firstID = t.getId();
                } else {
                    retrieve = false;
                    break;
                }
            }
            query.setMaxId(lastID-1);
        }
//        for (int i=0; i<tweets.size(); i++) {
//            System.out.println("--Tweet #" + (i+1) + "--");
//            System.out.println("@" + tweets.get(i).getUser().getScreenName() + ":" + tweets.get(i).getText());
//        }
        return tweets;
    }

    public static void writeCSV(String query, int numberOfTweets, String filepath) throws IOException, TwitterException {
        ArrayList<Status> tweets = Scrapper.getTweets(query, numberOfTweets);
        FileWriter writer = new FileWriter(filepath);
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        CSVUtils.writeLine(writer, Arrays.asList("id", "username", "name", "created_at", "lat", "long", "status"), '\t', '"');

        for (Status status : tweets) {
            GeoLocation geoLocation = status.getGeoLocation();
            String statusText = status.getText().replaceAll("\\s", " ");
            if (geoLocation != null) {
                CSVUtils.writeLine(writer, Arrays.asList(
                        String.valueOf(status.getId()),
                        status.getUser().getScreenName(),
                        status.getUser().getName(),
                        dateFormat.format(status.getCreatedAt()),
                        String.valueOf(status.getGeoLocation().getLatitude()),
                        String.valueOf(status.getGeoLocation().getLongitude()),
                        statusText)
                        , '\t', '"');
            } else {
                CSVUtils.writeLine(writer, Arrays.asList(
                        String.valueOf(status.getId()),
                        status.getUser().getScreenName(),
                        status.getUser().getName(),
                        dateFormat.format(status.getCreatedAt()),
                        "null",
                        "null",
                        statusText)
                        , '\t', '"');
            }
        }

        writer.flush();
        writer.close();
    }


    public static void main(String[] args) throws TwitterException, IOException {
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH.mm.ss");
        Date date = new Date();
        String currentDate = dateFormat.format(date);
        String tag = "diskon";

        Scrapper.config();
        Scrapper.writeCSV("" + tag, 2500, "csv/tanpa#" + tag + " " + currentDate + ".txt");
    }

}
