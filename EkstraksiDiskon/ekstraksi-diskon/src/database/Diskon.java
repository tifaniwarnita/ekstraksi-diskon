package database;


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
    String username;
    String screenName;
    String avatar;
    String tweet;
    Timestamp createdAt;
    String name;
    String discount;
    String price;
    String image;
    
    public Diskon(int id, int categoryId, String uname, String screenName, String avatar, String tweet,
                Timestamp createdAt, String name, String discount, String price, String image) {
        this.id = id;
        this.categoryId = categoryId;
        this.username = uname;
        this.screenName = screenName;
        this.avatar = avatar;
        this.tweet = tweet;
        this.createdAt = createdAt;
        this.name = name;
        this.discount = discount;
        this.price = price;
        this.image = image;
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
    
    public String getName() {
        return name;
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
    
    public void setName(String name) {
        this.name = name;
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
}
