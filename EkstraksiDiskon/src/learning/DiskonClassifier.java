package learning;

import twitter4j.Status;
import weka.classifiers.Classifier;
import weka.classifiers.Evaluation;
import weka.classifiers.meta.FilteredClassifier;
import weka.classifiers.trees.RandomForest;
import weka.core.*;
import weka.filters.Filter;
import weka.filters.unsupervised.attribute.StringToWordVector;

import java.util.ArrayList;
import java.util.Random;

/**
 * Created by Tifani on 11/25/2016.
 */
public class DiskonClassifier {
    public static final String PATH_MODEL_KLASIFIKASI = "model/random-forest.model";
    public static final int BUKAN_DISKON = 0;
    public static final int DISKON = 1;

    private static FilteredClassifier classifier = loadDiskonClassifierModel(PATH_MODEL_KLASIFIKASI);

    public static FilteredClassifier loadDiskonClassifierModel(String path) {
        FilteredClassifier filteredClassifier = null;
        try {
            filteredClassifier = (FilteredClassifier) weka.core.SerializationHelper.read(path);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return  filteredClassifier;
    }

    public static void buildClassifier(String pathSave, Instances data) throws Exception {
        String optionsFilter[] = new String[17];
        optionsFilter[0] = "-R";
        optionsFilter[1] = "first-last";
        optionsFilter[2] = "-W";
        optionsFilter[3] = "1000";
        optionsFilter[4] = "-prune-rate";
        optionsFilter[5] = "-1.0";
        optionsFilter[6] = "-I";
        optionsFilter[7] = "-N";
        optionsFilter[8] = "0";
        optionsFilter[9] = "-stemmer";
        optionsFilter[10] = "weka.core.stemmers.NullStemmer";
        optionsFilter[11] = "-stopwords-handler";
        optionsFilter[12] = "weka.core.stopwords.Null";
        optionsFilter[13] = "-M";
        optionsFilter[14] = "1";
        optionsFilter[15] = "-tokenizer";
        optionsFilter[16] = "weka.core.tokenizers.WordTokenizer -delimiters \" \\r\\n\\t.,;:\\\'\\\"()?!\"";


        String optionClassifier[] = new String[14];
        optionClassifier[0] = "-P";
        optionClassifier[1] = "100";
        optionClassifier[2] = "-I";
        optionClassifier[3] = "100";
        optionClassifier[4] = "-num-slots";
        optionClassifier[5] = "1";
        optionClassifier[6] = "-K";
        optionClassifier[7] = "0";
        optionClassifier[8] = "-M";
        optionClassifier[9] = "1.0";
        optionClassifier[10] = "-V";
        optionClassifier[11] = "0.001";
        optionClassifier[12] = "-S";
        optionClassifier[13] = "1";

        StringToWordVector filter = new StringToWordVector();
        filter.setOptions(optionsFilter);
        filter.setInputFormat(data);

        FilteredClassifier filteredClassifier = new FilteredClassifier();
        filteredClassifier.setFilter(filter);
        RandomForest randomForest = new RandomForest();
        randomForest.setOptions(optionsFilter);
        filteredClassifier.setClassifier(randomForest);

        filteredClassifier.buildClassifier(data);

        weka.core.SerializationHelper.write(pathSave, filteredClassifier);
    }

    public static boolean classifyTweet(Status tweet) throws Exception {
        ArrayList<Attribute> attributeList = new ArrayList<Attribute>();
        Attribute text = new Attribute("text", (FastVector) null);

        ArrayList<String> classVal = new ArrayList<String>();
        classVal.add("tidak");
        classVal.add("ya");

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

        double result = classifier.classifyInstance(instanceTest);
        if ((int) result == DISKON) return true;
            else return false;
    }

}
