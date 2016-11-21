import org.jinstagram.Instagram;
import org.jinstagram.auth.InstagramAuthService;
import org.jinstagram.auth.model.Token;
import org.jinstagram.auth.model.Verifier;
import org.jinstagram.auth.oauth.InstagramService;
import org.jinstagram.entity.tags.TagInfoData;
import org.jinstagram.entity.tags.TagInfoFeed;
import org.jinstagram.entity.users.basicinfo.UserInfo;
import org.jinstagram.entity.users.basicinfo.UserInfoData;
import org.jinstagram.exceptions.InstagramException;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.*;

/**
 * Created by Tifani on 11/16/2016.
 */
public class Scrapper {
    private static final Token EMPTY_TOKEN = null;

    public static void createInstagram() {
        InstagramService service = new InstagramAuthService()
                .apiKey(Constants.CLIENT_ID)
                .apiSecret(Constants.CLIENT_SECRET)
                .callback(Constants.CALLBACK_URL)
                .scope("basic")
                .build();

        // String authorizationUrl = service.getAuthorizationUrl();
        // System.out.println(authorizationUrl);
//        String authorizationUrl2 = "https://api.instagram.com/oauth/authorize/?client_id="
//                + Constants.CLIENT_ID
//                + "&redirect_uri="
//                + Constants.CALLBACK_URL_MAP
//                + "&response_type=token";
//        System.out.println(authorizationUrl2);
//        try {
//            URL url = new URL(authorizationUrl);
//            HttpURLConnection con = (HttpURLConnection) url.openConnection();
//            con.setRequestMethod("GET");
//            con.setRequestProperty("User-Agent", Constants.USER_AGENT);
//
//            int responseCode = con.getResponseCode();
//            System.out.println("\nSending 'GET' request to URL : " + url);
//            System.out.println("Response Code : " + responseCode);
//
//            BufferedReader in = new BufferedReader(
//                    new InputStreamReader(con.getInputStream()));
//            String inputLine;
//            StringBuffer response = new StringBuffer();
//
//            while ((inputLine = in.readLine()) != null) {
//                response.append(inputLine);
//            }
//            in.close();
//
//            //print result
//            System.out.println(response.toString());
//
//        } catch (IOException e) {
//            e.printStackTrace();
//        }

        Verifier verifier = new Verifier(Constants.CODE);
        Token accessToken = service.getAccessToken(verifier);
        Instagram instagram = new Instagram(accessToken);

        String tagName = "promobaju";
        TagInfoFeed feed = null;
        try {
            feed = instagram.getTagInfo(tagName);
            TagInfoData tagData = feed.getTagInfo();
            System.out.println("name : " + tagData.getTagName());
            System.out.println("media_count : " + tagData.getMediaCount());
        } catch (InstagramException e) {
            e.printStackTrace();
        }
//

    }

    public static void main(String[] args) {
        createInstagram();
    }

}
