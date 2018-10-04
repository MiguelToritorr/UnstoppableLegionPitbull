/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexion;
import static Conexion.clients.JDBC_DRIVER;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.*;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;
import com.mysql.jdbc.jdbc2.optional.*;
import com.sun.javafx.scene.control.skin.VirtualFlow;
import java.sql.ResultSet;
import java.sql.SQLException;
//import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
//import javax.servlet.http.HttpSession;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author Sakai
 */
public class dogs1 {
  //Creating dataBase connction String.
     static final String  JDBC_DRIVER="com.mysql.jdbc.Driver";
    static final String URL_BD="jdbc:mysql://localhost:3306/unstoppable";
    static final String USER="root";
    static final String PWD="1234";
    public String tagnumber;
    public String name;
    public String age;
    public String pounds;
    public String color;
    public String category;
    public String sex;
    public String vaccins;
    public String picture;
    public String price;
    public String comments;
    
    public String getTagnumber() {
        return tagnumber;
    }

    public void setTagnumber(String tagnumber) {
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

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
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

    //creating variables of clients realted to database.
    public void setComments(String comments) {
        this.comments = comments;
    }

 public List <dogs1> dogs=new ArrayList<dogs1>();

    public List<dogs1> getDogs() {
        return dogs;
    }

    public void setDogs(List<dogs1> dogs) {
        this.dogs = dogs;
    }
        //creatin result of that conexion.
    public String resConexion="error";
    
     //creating conexion's variable.
    Connection conexionDatabase=null;
    
    //creating result of insertion dogs
    public String resRegDogs="error";
    
    //creating result of data dogs
    public String resDataDog="error";
    
    //creatin result of delete dogs
    public String resDelDog="error";
    
       public String DBConexion(){
    try{
       Class.forName(JDBC_DRIVER);
       conexionDatabase=(Connection)DriverManager.getConnection(URL_BD,USER,PWD);
       resConexion="success";
    }catch(Exception e){
        resConexion="error";
    }
        return resConexion;
    }
    
   public String regDog(){
        
        DBConexion();
        try{
            //creating dog register
            String sqlReg ="insert into dogs values(?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement datadogs = (PreparedStatement)conexionDatabase.prepareStatement(sqlReg);
            datadogs.setString(1, tagnumber);
            datadogs.setString(2, name);
            datadogs.setString(3, age);
            datadogs.setString(4, pounds);
            datadogs.setString(5, color);
            datadogs.setString(6, category);
            datadogs.setString(7, sex);
            datadogs.setString(8, vaccins);
            datadogs.setString(9, picture);
            datadogs.setString(10,price);
            datadogs.setString(11,comments);
            datadogs.executeUpdate();
            dataDogs();
            resRegDogs="success";
        }catch(Exception e){
            resRegDogs="error";
        }
        return resRegDogs;
        
    } 
    
    
//creating data dogs
    public String dataDogs(){
        DBConexion();
        dogs.clear();
        try{
            String sql = "select * from dogs";
            PreparedStatement user = (PreparedStatement)conexionDatabase.prepareStatement(sql);
            ResultSet data = user.executeQuery(sql);
            while(data.next()){
                dogs1 dog = new dogs1();
                dog.setTagnumber(data.getString("tagnumber"));
                dog.setName(data.getString("name"));
                dog.setAge(data.getString("age"));
                dog.setPounds(data.getString("pounds"));
                dog.setColor(data.getString("color"));
                dog.setCategory(data.getString("category"));
                dog.setSex(data.getString("sex"));
                dog.setVaccins(data.getString("vaccins"));
                dog.setPicture(data.getString("picture"));
                dog.setPrice(data.getString("price"));
                dog.setComments(data.getString("comments"));
                this.dogs.add(dog);
            }
            resDataDog = "success";
        }catch(Exception e){
            resDataDog = "error";
        }
        return resDataDog;
    }   
    
    //Creating delete dogs.
    public String deletedog(){
    
    DBConexion();
    try {
        String sql="delete from dogs where tagnumber=?";
        PreparedStatement delDog= (PreparedStatement)conexionDatabase.prepareStatement(sql);
        delDog.setString(1, tagnumber);
        delDog.executeUpdate();
        resDelDog="success";
    } catch (Exception e) {
    resDelDog="error";
    }
    return resDelDog;
    }
    
}
