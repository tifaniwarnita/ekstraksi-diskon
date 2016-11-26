package learning;


import IndonesianNLP.IndonesianNETagger;
import IndonesianNLP.IndonesianSentenceDetector;
import IndonesianNLP.IndonesianSentenceFormalization;
import IndonesianNLP.IndonesianSentenceTokenizer;
import IndonesianNLP.IndonesianStemmer;
import com.opencsv.CSVReader;
import weka.classifiers.Evaluation;
import weka.classifiers.trees.J48;
import weka.core.Debug;
import weka.core.Instances;
import weka.core.converters.ArffSaver;
import weka.core.converters.TextDirectoryLoader;
import weka.filters.Filter;
import weka.filters.unsupervised.attribute.StringToWordVector;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.text.Normalizer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by Tifani on 11/24/2016.
 */
public class PreProcess {
    public static final int TYPE_KLASIFIKASI_DISKON = 0;
    public static final int TYPE_KATEGORI = 1;

    private static final String DICTIONARY_PATH = "resource/dictionary.txt";
    private static HashMap<String, String> dictionary = readDictionary();

    public PreProcess() {
    }

    public static void processTSV(String filepath, int type) {
        BufferedReader br = null;
        String line = "";
        String cvsSplitBy = "\t";

        try {

            br = new BufferedReader(new FileReader(filepath));
            int i=0;
            while ((line = br.readLine()) != null) {

                // use tab as separator
                String[] tweet = line.split(cvsSplitBy);
                System.out.println("Memproses tweet ke-" + i);

                StringBuffer buf = new StringBuffer();
                buf.append(normalizeText(tweet[0]));
                buf.append(",");
                buf.append(normalizeText(tweet[1]));
                buf.append(",");
                ArrayList<String> strings = run(tweet[2]);
                for (String string : strings) {
                    buf.append(string);
                    buf.append(" ");
                }

                switch(type) {
                    case TYPE_KLASIFIKASI_DISKON:
                        prosesKlasifikasiDiskon(buf, tweet, i);
                        break;
                    case TYPE_KATEGORI:
                        prosesKategoriDiskon(buf, tweet, i);
                        break;
                }
                i++;
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (br != null) {
                try {
                    br.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public static HashMap<String, String> readDictionary() {
        HashMap<String, String> hashMap = new HashMap<>();
        BufferedReader br = null;
        String line = "";
        String cvsSplitBy = "\t";

        try {
            br = new BufferedReader(new FileReader(DICTIONARY_PATH));
            while ((line = br.readLine()) != null) {

                // use tab as separator
                String[] dict = line.split(cvsSplitBy);
                hashMap.put(dict[0], dict[1]);
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (br != null) {
                try {
                    br.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return hashMap;
    }

    public static void prosesKlasifikasiDiskon(StringBuffer buf, String[] tweet, int i) {
        if (tweet[3].equals("ya")) {
            writeToFile("data/processed/diskon/ya/diskon-" + i + ".txt", buf.toString());
        } else if (tweet[3].equals("tidak")) {
            writeToFile("data/processed/diskon/tidak/bukandiskon-" + i + ".txt", buf.toString());
        }
    }

    public static void prosesKategoriDiskon(StringBuffer buf, String[] tweet, int i) {
        String result = buf.toString();
        if (dictionary != null) {
            for (Map.Entry<String, String> entry : dictionary.entrySet()) {
                result = result.replace(entry.getKey(), entry.getValue());
            }
        }
        if (tweet.length >=4) {
            writeToFile("data/processed/kategori/" + tweet[3] + "/" + tweet[3] + "-" + i + ".txt", result);
            System.out.println(result);
        }
    }

    public static void saveArff(String dirPath, String arrfPath) {
        TextDirectoryLoader loader = new TextDirectoryLoader();
        try {
            // convert the directory into a dataset
            loader.setDirectory(new File(dirPath));
            Instances dataRaw = loader.getDataSet();

            // output the arff file
            ArffSaver saver = new ArffSaver();
            saver.setInstances(dataRaw);
            saver.setFile(new File(arrfPath));
            saver.writeBatch();

            // System.out.println("Build classifier");
            // DiskonClassifier.buildClassifier("model/" + arrfPath, dataRaw);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    public static ArrayList<String> run (String message) {
        message = message.toLowerCase();

        IndonesianSentenceDetector detector = new IndonesianSentenceDetector();
        ArrayList<String> sentenceList = detector.splitSentence(message);

        IndonesianSentenceTokenizer tokenizer = new IndonesianSentenceTokenizer();
        ArrayList<String> token = new ArrayList<String>();

        for (String s: sentenceList) {
            token.addAll(tokenizer.tokenizeSentence(s));
        }

        IndonesianSentenceFormalization formalizer = new IndonesianSentenceFormalization();
        formalizer.initStopword();
        ArrayList<String> result = new ArrayList<>();

        IndonesianStemmer stemmer = new IndonesianStemmer();

        for (int i = 0; i < token.size(); i++) {
            String word = token.get(i);

            if (!isLink(word) && word.contains(".")) {
                String[] words = word.split("\\.");
                if (words.length>1) {
                    word = words[0];
                    token.add(i+1,words[1]);
                }
            }
            String r = formalizer.deleteStopword(formalizer.formalizeWord(word)).trim();
            for (String l : r.split("[,/.()+-=]")) {
                String temp = formalizer.formalizeWord(l).trim();
                if (!temp.equals("_PHONE_") && !temp.equals("_URL_")) {
                    temp = normalizeText(temp);
                }

                result.add(formalizer.formalizeWord(stemmer.stem(temp)));
            }
        }

        result.removeAll(Arrays.asList("", null));

        //System.out.println(result.toString());
        return result;
    }

    public static String normalizeText(String text) {
        String result = Normalizer.normalize(text, Normalizer.Form.NFD);
        result = result.replaceAll("[^a-zA-Z\\d\\s:]", "");
        result = result.replaceAll("[,/.()+-='\"]", "");
        result = result.replaceAll("[^\\x00-\\x7F]", "");
        result = result.replaceAll("\\P{InBasic_Latin}", "");
        return result;
    }

    public static String normalizeTweet(String username, String fullname, String text) {
        String result = PreProcess.normalizeText(username);
        result += " " + PreProcess.normalizeText(fullname);
        ArrayList<String> terms = PreProcess.run(text);
        for(String term : terms) {
            result += " " + term;
        }
        return result;
    }

    public static String normalizeTweetForExtraction(String username, String fullname, String text) {
        String result = PreProcess.normalizeText(username);
        result += " " + PreProcess.normalizeText(fullname);
        result += " " + text;
        result = result.toLowerCase().replace("@", "").replace("#", "");
        return result;
    }

    private static boolean isLink (String token) {
        String regex = "((https?://)|(www\\.)|(https?://)|(www\\.))[\\w\\-\\.~]+\\.[a-z]{2,6}(/[\\w\\-\\.~]*)*";
        Pattern p = Pattern.compile(regex);
        Matcher m = p.matcher(token);
        return (m.matches());
    }

    private static void writeToFile(String filepath, String content) {
        try {
            File file = new File(filepath);
            file.getParentFile().mkdirs();
            System.out.println("Menulis ke " + file.getCanonicalPath());

            // if file doesnt exists, then create it
            if (!file.exists()) {
                file.createNewFile();
            }

            FileWriter fw = new FileWriter(file.getAbsoluteFile());
            BufferedWriter bw = new BufferedWriter(fw);
            bw.write(content);
            bw.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}