import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

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
            String token = request.getParameter("token");
            String sql = "SELECT * FROM token WHERE access_token = ?";
            String ipAddress = request.getHeader("X-FORWARDED-FOR");
            if (ipAddress == null) {
                ipAddress = request.getRemoteAddr();
            }
            String userAgent = request.getHeader("User-Agent");
            String[] parsedToken = token.split("[#]");


            try (PreparedStatement statement = conn.prepareStatement(sql)){
                statement.setString(1, token);

                ResultSet result = statement.executeQuery();

                if(result.next()){
                    Date now = new Date();
                    DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

                    try {

                        Date expiry_date = format.parse(result.getString("expiry_date"));
                        // Mengecek user agent dan ip address token
                        if(!userAgent.equals(parsedToken[1]) || !ipAddress.equals(parsedToken[2])){
                            object.put("error", "User agent and/or IP Address is incorrect");
                        }
                        //Mengecek apakah token masih berlaku
                        else if (now.after(expiry_date)){
                            object.put("error", "Expired Token");
                            String deleteQuery = "DELETE FROM token WHERE access_token = ?";
                            try (PreparedStatement deleteStatement = conn.prepareStatement(deleteQuery)){
                                deleteStatement.setString(1, token);
                                deleteStatement.execute();
                            }
                        }
                        else {
                            object.put("id", result.getInt("u_id"));

                        }
                    }
                    catch(SQLException | ParseException e){
                        object.put("error", "SQL Exception");
                    }

                }
            }
            catch (SQLException e){
                object.put("error", "SQL Exception");
            }
            out.println(object.toString());
        }
    }
    }
}
