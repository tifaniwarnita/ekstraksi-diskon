import database.DatabaseHelper;
import database.Diskon;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.crypto.Data;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.util.ArrayList;

/**
 * Created by Tifani on 11/26/2016.
 */
@WebServlet(name = "DiskonServlet")
public class DiskonServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        JSONObject object = new JSONObject();

        response.setContentType("application/json");
        try (PrintWriter out = response.getWriter()) {
            String kategori = request.getParameter("kategori");
            ArrayList<Diskon> result;

            DatabaseHelper dbHelper = new DatabaseHelper();

            if (kategori.equals("semua")) {
                result = dbHelper.getTweets();
            } else {
                result = dbHelper.getTweetsByCategory(kategori);
            }

            switch (kategori) {
                case "fahion":
                    object.put("nama_kategori", "Fashion");
                    break;
                case "kecantikan":
                    object.put("nama_kategori", "Kecantikan dan Kesehatan");
                    break;
                case "rumahtangga":
                    object.put("nama_kategori", "Rumah Tangga");
                    break;
                case "hiburan":
                    object.put("nama_kategori", "Hiburan");
                    break;
                case "wisata":
                    object.put("nama_kategori", "Wisata");
                    break;
                case "kuliner":
                    object.put("nama_kategori", "Kuliner");
                    break;
                case "otomotif":
                    object.put("nama_kategori", "Otomotif");
                    break;
                case "elektronik":
                    object.put("nama_kategori", "Elektronik");
                    break;
                case "semua":
                    object.put("nama_kategori", "Semua");
                    break;
            }

            if (result != null) {
                JSONArray data = new JSONArray();
                for(Diskon diskon : result) {
                    data.add(diskon.toJSONOBject());
                }
                object.put("data", data);
            }
            object.put("kategori", kategori);
            out.println(object.toString());
        }
    }
}
