package database;


import org.json.simple.JSONObject;

import java.sql.Timestamp;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author pipin
 */
public class Diskon {
    int id;
    int categoryId;
    String username = null;
    String screenName = null;
    String avatar = null;
    String tweet = null;
    Timestamp createdAt = null;
    String discount = null;
    String price = null;
    String image = null;
    String tanggal = null;
    String pembayaran = null;
    String kodeVoucher = null;

    public Diskon(int id, int categoryId, String uname, String screenName, String avatar, String tweet,
                  Timestamp createdAt, String discount, String price, String image,
                  String tanggal, String pembayaran, String kodeVoucher) {
        this.id = id;
        this.categoryId = categoryId;
        this.username = uname;
        this.screenName = screenName;
        this.avatar = avatar;
        this.tweet = tweet;
        this.createdAt = createdAt;
        this.discount = discount;
        this.price = price;
        this.image = image;
        this.tanggal = tanggal;
        this.pembayaran = pembayaran;
        this.kodeVoucher = kodeVoucher;
    }

    public int getId() {
        return id;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public String getUsername() {
        return username;
    }

    public String getScreenName() {
        return screenName;
    }

    public String getAvatar() {
        return avatar;
    }

    public String getTweet() {
        return tweet;
    }

    public Timestamp getCreatedAt() {
        return createdAt;
    }

    public String getTanggal() {
        return tanggal;
    }

    public String getPembayaran() {
        return pembayaran;
    }

    public String getKodeVoucher() {
        return kodeVoucher;
    }

    public String getDiscount() {
        return discount;
    }

    public String getPrice() {
        return price;
    }

    public String getImage() {
        return image;
    }

    public void setCategoryId(int category_id) {
        categoryId = category_id;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setScreenName(String sname) {
        this.screenName = sname;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public void setTweet(String tweet) {
        this.tweet = tweet;
    }

    public void setTanggal(String tanggal) {
        this.tanggal = tanggal;
    }

    public void setPembayaran(String pembayaran) {
        this.pembayaran = pembayaran;
    }

    public void setKodeVoucher(String kode) {
        this.kodeVoucher = kode;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public void setDiscount(String discount) {
        this.discount = discount;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt;
    }

    public JSONObject toJSONOBject() {
        JSONObject jsonObject = new JSONObject();
        switch (categoryId) {
            case 1:
                jsonObject.put("category_id", "elektronik");
            break;
            case 2:
                jsonObject.put("category_id", "fashion");
                break;
            case 3:
                jsonObject.put("category_id", "hiburan");
                break;
            case 4:
                jsonObject.put("category_id", "kecantikan");
                break;
            case 5:
                jsonObject.put("category_id", "kuliner");
                break;
            case 6:
                jsonObject.put("category_id", "otomotif");
                break;
            case 7:
                jsonObject.put("category_id", "rumahtangga");
                break;
            case 8:
                jsonObject.put("category_id", "wisata");
                break;
            case 9:
                jsonObject.put("category_id", "lainlain");
                break;
        }
        jsonObject.put("name", username);
        jsonObject.put("username", screenName);
        jsonObject.put("avatar", avatar);
        jsonObject.put("tweet", tweet);
        jsonObject.put("created_at", createdAt.toString());
        jsonObject.put("diskon", discount);
        jsonObject.put("harga", price);
        jsonObject.put("tanggal", tanggal);
        jsonObject.put("pembayaran", pembayaran);
        jsonObject.put("kode_voucher", kodeVoucher);
        jsonObject.put("image", image);
        return jsonObject;
    }
}
