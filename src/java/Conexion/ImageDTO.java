package Conexion;

import java.sql.Blob;

public class ImageDTO {
 int tagnumber;
     String name;
    String age;
     String pounds;
    String color;
     String category;
    String sex;
    String vaccins;
    String price;
     String comments;
	Blob picture;
    public int getTagnumber() {
        return tagnumber;
    }

    public void setTagnumber(int tagnumber) {
        this.tagnumber = tagnumber;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getPounds() {
        return pounds;
    }

    public void setPounds(String pounds) {
        this.pounds = pounds;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getVaccins() {
        return vaccins;
    }

    public void setVaccins(String vaccins) {
        this.vaccins = vaccins;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public Blob getPicture() {
        return picture;
    }

    public void setPicture(Blob picture) {
        this.picture = picture;
    }

	
	// generate getters and setters 

	
	

}
