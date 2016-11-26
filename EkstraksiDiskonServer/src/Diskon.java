import org.json.simple.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;

/**
 * Created by Tifani on 11/26/2016.
 */
@WebServlet(name = "Diskon")
public class Diskon extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        JSONObject object = new JSONObject();

        response.setContentType("application/json");
        try (PrintWriter out = response.getWriter()) {
            String kategori = request.getParameter("kategori");
            object.put("kucing", "terbang");
            object.put("kategori", kategori);
            out.println(object.toString());
        }
    }
}
