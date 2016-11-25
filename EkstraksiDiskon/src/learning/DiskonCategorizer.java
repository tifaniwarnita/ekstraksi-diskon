package learning;

import twitter4j.Status;
import weka.classifiers.meta.FilteredClassifier;
import weka.core.*;

import java.util.ArrayList;

/**
 * Created by Tifani on 11/26/2016.
 */
public class DiskonCategorizer {
    public static final int ELEKTRONIK = 0;
    public static final int FASHION = 1;
    public static final int HIBURAN= 2;
    public static final int KECANTIKAN = 3;
    public static final int KULINER = 4;
    public static final int LAIN_LAIN = 5;
    public static final int OTOMOTIF = 6;
    public static final int RUMAH_TANGGA = 7;
    public static final int WISATA = 8;
    public static final String PATH_MODEL_KATEGORISASI = "model/random-forest.model";

    private static FilteredClassifier categorizer = null;
    // private static FilteredClassifier categorizer = loadDiskonCategorizerModel(PATH_MODEL_KATEGORISASI);

    public static FilteredClassifier loadDiskonCategorizerModel(String path) {
        FilteredClassifier filteredClassifier = null;
        try {
            filteredClassifier = (FilteredClassifier) weka.core.SerializationHelper.read(path);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return  filteredClassifier;
    }

    public static int categorizeTweet(Status tweet) throws Exception {
        ArrayList<Attribute> attributeList = new ArrayList<Attribute>();
        Attribute text = new Attribute("text", (FastVector) null);

        ArrayList<String> classVal = new ArrayList<String>();
        classVal.add("elektronik");
        classVal.add("fashion");
        classVal.add("hiburan");
        classVal.add("kecantikan");
        classVal.add("kuliner");
        classVal.add("lain-lain");
        classVal.add("otomotif");
        classVal.add("rumah tangga");
        classVal.add("wisata");
        Attribute classAttr = new Attribute("@@class@@",classVal);

        attributeList.add(text);
        attributeList.add(classAttr);

        Instances data = new Instances("TestInstances",attributeList, 0);
        data.setClassIndex(data.numAttributes() - 1);
        Instance instanceTest = new DenseInstance(data.numAttributes());

        String textValue = PreProcess.normalizeTweet(tweet.getUser().getScreenName(),
                tweet.getUser().getName(),
                tweet.getText());
        instanceTest.setValue(text, textValue);
        instanceTest.setDataset(data);
        instanceTest.setClassValue(0);
        data.add(instanceTest);

        double result = categorizer.classifyInstance(instanceTest);
        return (int) result;
    }
}
