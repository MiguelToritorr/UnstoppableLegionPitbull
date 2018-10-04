/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexion;
import static Conexion.clients.JDBC_DRIVER;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.*;
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
import java.io.File;
import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 *
 * @author Sakai
 */
public class dogs extends ActionSupport{
  public String tagnumber;
    public String name;
    public String age;
    public String pounds;
    public String color;
    public String category;
    public String sex;
    public String vaccins;
    public String price;
    public String comments;
    public File picture;
    private String msg;
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
    public File getPicture() {
        return picture;
    }

    public void setPicture(File picture) {
        this.picture = picture;
    }  
   
	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}
public static Connection connect() throws Exception {
Class.forName("com.mysql.jdbc.Driver");
		return (Connection) DriverManager.getConnection("jdbc:mysql://localhost/unstoppable", "root", "1234");
	}

	@Override
	public String execute() {
		try {
			PreparedStatement preparedStatement = connect().prepareStatement("INSERT INTO dogs(tagnumber,name,age,pounds,color,category,sex,vaccins,price,comments,picture) VALUES(?,?,?,?,?,?,?,?,?,?,?)");
        preparedStatement.setString(1, tagnumber);
            preparedStatement.setString(2, name);
            preparedStatement.setString(3, age);
            preparedStatement.setString(4, pounds);
            preparedStatement.setString(5, color);
            preparedStatement.setString(6, category);
            preparedStatement.setString(7, sex);
            preparedStatement.setString(8, vaccins);
           preparedStatement.setString(9,price);
           preparedStatement.setString(10,comments);
           	    FileInputStream inputStream = new FileInputStream(picture);
            preparedStatement.setBinaryStream(11, inputStream);
	    int i = preparedStatement.executeUpdate();
            
	    setName("");
                	if (i > 0) {
				setMsg("Image successfully inserted.");
			} else {
				setMsg("Something gone wrong.");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "SUCCESS";
	}

}
