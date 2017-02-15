/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author pipin
 */
public class DatabaseHelper {
    private Connection conn;
    // JDBC driver name and database URL
    private static final String DRIVER = "com.mysql.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/discount_catalogue";
    // Database credentials
    private static final String USERNAME = "root";
    private static final String PASSWORD = "";

    public DatabaseHelper() {
        try {
            Class.forName(DRIVER);
            // Establish connection to db
            conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    public ArrayList<Category> getCategories() {
        ArrayList<Category> result = new ArrayList<Category>();
        try {
            String query = "SELECT * FROM `kategori`";
            try (PreparedStatement dbStatement = conn.prepareStatement(query)) {
                ResultSet rs = dbStatement.executeQuery();
                if(rs.next()) {
                    result.add(new Category(rs.getInt("id"), rs.getString("category"), rs.getString("category_name")));
                }
                dbStatement.close();
            }
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseHelper.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }

    public String getCategoryNameById(int id) {
        String result = "";
        try {
            String query = "SELECT category_name FROM `kategori` WHERE id=?";
            try (PreparedStatement dbStatement = conn.prepareStatement(query)) {
                dbStatement.setInt(1, id);
                ResultSet rs = dbStatement.executeQuery();
                if(rs.next()) {
                    result = rs.getString("category_name");
                }
                dbStatement.close();
            }
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseHelper.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }

    public String getCategoryNameByCategory(String category) {
        String result = "";
        try {
            String query = "SELECT category_name FROM `kategori` WHERE category=?";
            try (PreparedStatement dbStatement = conn.prepareStatement(query)) {
                dbStatement.setString(1, category);
                ResultSet rs = dbStatement.executeQuery();
                if(rs.next()) {
                    result = rs.getString("category_name");
                }
                dbStatement.close();
            }
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseHelper.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }

    public int getCategoryIdByCategory(String category) {
        int result = 0;
        try {
            String query = "SELECT id FROM `kategori` WHERE category=?";
            try (PreparedStatement dbStatement = conn.prepareStatement(query)) {
                dbStatement.setString(1, category);
                ResultSet rs = dbStatement.executeQuery();
                if(rs.next()) {
                    result = rs.getInt("id");
                }
                dbStatement.close();
            }
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseHelper.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }

    public int getCategoryIdByCategoryName(String categoryName) {
        int result = 0;
        try {
            String query = "SELECT id FROM `kategori` WHERE category_name=?";
            try (PreparedStatement dbStatement = conn.prepareStatement(query)) {
                dbStatement.setString(1, categoryName);
                ResultSet rs = dbStatement.executeQuery();
                if(rs.next()) {
                    result = rs.getInt("id");
                }
                dbStatement.close();
            }
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseHelper.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }

    public String getCategoryById(int id) {
        String result = "";
        try {
            String query = "SELECT category FROM `kategori` WHERE id=?";
            try (PreparedStatement dbStatement = conn.prepareStatement(query)) {
                dbStatement.setInt(1, id);
                ResultSet rs = dbStatement.executeQuery();
                if(rs.next()) {
                    result = rs.getString("category");
                }
                dbStatement.close();
            }
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseHelper.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }

    public String getCategoryByCategoryName(String categoryName) {
        String result = "";
        try {
            String query = "SELECT category FROM `kategori` WHERE category_name=?";
            try (PreparedStatement dbStatement = conn.prepareStatement(query)) {
                dbStatement.setString(1, categoryName);
                ResultSet rs = dbStatement.executeQuery();
                if(rs.next()) {
                    result = rs.getString("category");
                }
                dbStatement.close();
            }
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseHelper.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }

    public boolean insertTweetByCategoryName(String categoryName, Diskon data) {
        String tablename = this.getCategoryByCategoryName(categoryName);
        try {
            String query = "INSERT INTO " + tablename + " (username, screen_name, avatar, text, discount, price, image, created_at,"
                    + "tanggal, pembayaran, kode_voucher) VALUES (?,?,?,?,?,?,?,?,?,?,?);";
            try (PreparedStatement dbStatement = conn.prepareStatement(query)) {
                dbStatement.setString(1, data.username);
                dbStatement.setString(2, data.screenName);
                dbStatement.setString(3, data.avatar);
                dbStatement.setString(4, data.tweet);
                dbStatement.setString(5, data.discount);
                dbStatement.setString(6, data.price);
                dbStatement.setString(7, data.image);
                dbStatement.setTimestamp(8, data.createdAt);
                dbStatement.setString(9, data.tanggal);
                dbStatement.setString(10, data.pembayaran);
                dbStatement.setString(11, data.kodeVoucher);
                dbStatement.executeUpdate();
                System.out.println(dbStatement.toString());
                dbStatement.close();
            }
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseHelper.class.getName()).log(Level.SEVERE, null, ex);
        }
        return true;
    }

    public boolean insertTweetById(int id, Diskon data) {
        String tablename = this.getCategoryById(id);
        try {
            String query = "INSERT INTO " + tablename + " (username, screen_name, avatar, text, discount, price, image, created_at,"
                    + "tanggal, pembayaran, kode_voucher) VALUES (?,?,?,?,?,?,?,?,?,?,?);";
            try (PreparedStatement dbStatement = conn.prepareStatement(query)) {
                dbStatement.setString(1, data.username);
                dbStatement.setString(2, data.screenName);
                dbStatement.setString(3, data.avatar);
                dbStatement.setString(4, data.tweet);
                dbStatement.setString(5, data.discount);
                dbStatement.setString(6, data.price);
                dbStatement.setString(7, data.image);
                dbStatement.setTimestamp(8, data.createdAt);
                dbStatement.setString(9, data.tanggal);
                dbStatement.setString(10, data.pembayaran);
                dbStatement.setString(11, data.kodeVoucher);
                dbStatement.executeUpdate();
                dbStatement.close();
            }
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseHelper.class.getName()).log(Level.SEVERE, null, ex);
        }
        return true;
    }

    public boolean insertTweets(int id, ArrayList<Diskon> data) {
        boolean flag = false;
        for (Diskon instance : data) {
            flag = this.insertTweetById(id, instance);
        }
        return flag;
    }

    public boolean insertTweets(String categoryName, ArrayList<Diskon> data) {
        boolean flag = false;
        for (Diskon instance : data) {
            flag = this.insertTweetByCategoryName(categoryName, instance);
        }
        return flag;
    }

    public ArrayList<Diskon> getTweets() {
        ArrayList<Diskon> result = new ArrayList<Diskon>();
        for (int i=1; i<=9; i++) {
            result.addAll(this.getTweetsById(i));
        }
        return result;
    }

    public ArrayList<Diskon> getTweetsByCategory(String category) {
        ArrayList<Diskon> result = new ArrayList<Diskon>();
        try {
            String query = "SELECT * FROM " + category;
            try (PreparedStatement dbStatement = conn.prepareStatement(query)) {
                ResultSet rs = dbStatement.executeQuery();
                while (rs.next()) {
                    result.add(new Diskon(rs.getInt("id"), rs.getInt("category_id"), rs.getString("username"), rs.getString("screen_name"),
                            rs.getString("avatar"), rs.getString("text"), rs.getTimestamp("created_at"), rs.getString("discount"),
                            rs.getString("price"), rs.getString("image"), rs.getString("tanggal"), rs.getString("pembayaran"), rs.getString("kode_voucher")));
                }
                dbStatement.close();
            }
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseHelper.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }

    public ArrayList<Diskon> getTweetsById(int id) {
        ArrayList<Diskon> result = new ArrayList<Diskon>();
        String tablename = this.getCategoryById(id);
        try {
            String query = "SELECT * FROM " + tablename;
            try (PreparedStatement dbStatement = conn.prepareStatement(query)) {
                ResultSet rs = dbStatement.executeQuery();
                while (rs.next()) {
                    result.add(new Diskon(rs.getInt("id"), rs.getInt("category_id"), rs.getString("username"), rs.getString("screen_name"),
                            rs.getString("avatar"), rs.getString("text"), rs.getTimestamp("created_at"), rs.getString("discount"),
                            rs.getString("price"), rs.getString("image"), rs.getString("tanggal"), rs.getString("pembayaran"), rs.getString("kode_voucher")));
                }
                dbStatement.close();
            }
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseHelper.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }
}