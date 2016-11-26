package database;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author pipin
 */
public class Category {
    int id;
    String category;
    String categoryName;
    
    public Category(int id, String category, String categoryName) {
        this.id = id;
        this.category = category;
        this.categoryName = categoryName;
    }
    
    public int getId() {
        return id;
    }
    
    public String getCategory() {
        return category;
    }
    
    public String categoryName() {
        return categoryName;
    }
    
    public void getCategory(String category) {
        this.category = category;
    }
    
    public void categoryName(String categoryName) {
        this.categoryName = categoryName;
    }
}
