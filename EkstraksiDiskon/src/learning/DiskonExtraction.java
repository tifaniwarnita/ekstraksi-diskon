package learning;

import com.sun.org.apache.regexp.internal.RE;
import twitter4j.Status;

import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by Tifani on 11/26/2016.
 */
public class DiskonExtraction {
    public static final int DISKON = 0;
    public static final int HARGA = 1;
    public static final int CARA_PEMBAYARAN = 2;
    public static final int TANGGAL = 3;
    public static final int KODE_VOUCHER = 4;

    private static final String REGEX_DISKON = "(?:(?:hemat|diskon|potongan|voucher|turun|cashback)(?! menjadi)(?: (?:hingga|up to|sampai(?: dengan)?))?\\s*)(?:(\\d+\\.000)|(?:(?:Rp\\.?|IDR)\\s*(\\d+(?:\\.?\\d*)+(?:,\\d+)?(?:\\s*(?:k|rb|ribu|jt|juta))?))|(?:(\\d+)\\s*rupiah)|(\\d+\\s*(?:k|rb|ribu|jt|juta)))|(?:(\\d+(?:%|(?:\\s*persen))(?:\\s*\\+\\s*(?:extra)?\\s*\\d+(?:%|(?:\\s*persen)))?))";
    private static final String REGEX_HARGA = "(\\d+\\.000)|(?:(?:Rp\\.?|IDR)\\s*(\\d+(?:\\.?\\d*)+(?:,\\d+)?(?:\\s*(?:k |rb|ribu|jt|juta))?))|(?:(\\d+)\\s*rupiah)|(\\d+\\s*(?:k |rb|ribu|jt|juta))";
    private static final String REGEX_CARA_PEMBAYARAN = "(?:dengan|pakai|pake|pemilik|pemegang|dgn?|menggunakan|tunjukkan|menunjukkan)\\s*(t-?cash|telkomsel\\s*cash|kartu\\s*(?:kredit|debit)?\\s*[a-z]+|(?:kredit|debit)\\s*[a-z]+|cc\\s*[a-z]+|flazz|[a-z'\\s]+card)";
    private static final String REGEX_TANGGAL = "((?:[\\d]{1,2}(?:(?:st|nd|rd|th|th) (?:of)?)?[-/ ]*(?:jan(?:uar[i|y])?|feb(?:ruar[i|y])?|mar(?:et|ch)?|apr(?:il)?|mei|may|jun[i|e]?|jul[i|y]?|aug(?:ust)?|agustus|sept?(?:ember)?|o[c|k]t(?:ober)?|nov(?:ember)?|de[c|s](?:ember)?)? *(?:(?:'?\\d{2}\\s)|\\d{4})? *(?:-|s\\.?d\\.?|sampai|sampai dengan)\\s*)?[\\d]{1,2}(?:(?:st|nd|rd|th|th) (?:of)?)?[-/ ]*(?:jan(?:uar[i|y])?|feb(?:ruar[i|y])?|mar(?:et|ch)?|apr(?:il)?|mei|may|jun[i|e]?|jul[i|y]?|aug(?:ust)?|agustus|sept?(?:ember)?|o[c|k]t(?:ober)?|nov(?:ember)?|de[c|s](?:ember)?) *(?:(?:'?\\d{2}\\s)|\\d{4})?) |(\\d{1,2}[-/]\\d{1,2}[-/]\\d{4})";
    private static final String REGEX_KODE_VOUCHER = "[c|k]ode\\s*(?:promo|voucher)?:?\\s*([A-Z1-9]+)";



    public static ArrayList<String> extractInfo(Status status, int type) {
        String tweet = PreProcess.normalizeTweetForExtraction(status.getUser().getScreenName(),
                status.getUser().getName(),
                status.getText());
        ArrayList<String> result = new ArrayList<>();

        Pattern pattern = null;
        switch (type) {
            case DISKON:
                pattern = Pattern.compile(REGEX_DISKON);
                break;
            case HARGA:
                pattern = Pattern.compile(REGEX_HARGA);
                break;
            case CARA_PEMBAYARAN:
                pattern = Pattern.compile(REGEX_CARA_PEMBAYARAN);
                break;
            case TANGGAL:
                pattern = Pattern.compile(REGEX_TANGGAL);
                break;
            case KODE_VOUCHER:
                pattern = Pattern.compile(REGEX_KODE_VOUCHER);
                break;
        }
        Matcher matcher = pattern.matcher(tweet);
        while (matcher.find()) {
            for(int i=1; i<matcher.groupCount()+1; i++) {
                if (matcher.group(i) != null)
                    result.add(matcher.group(i));
            }
        }
        return result;
    }

    public static void printExtractedInfo(ArrayList<String> extract) {
        if (extract.size() > 0) {
            for(int j=0; j<extract.size(); j++) {
                System.out.print(extract.get(j));
                if (j < extract.size()-1) {
                    System.out.print(", ");
                }
            }
            System.out.println();
        } else {
            System.out.println("-");
        }

    }
}
