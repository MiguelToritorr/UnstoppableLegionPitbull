/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexion;

import static Conexion.dogs1.JDBC_DRIVER;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Sakai
 */
public class Conexionlog {
    static final String  JDBC_DRIVER="com.mysql.jdbc.Driver";
    static final String URL_BD="jdbc:mysql://localhost:3306/unstoppable";
    static final String USER="root";
    static final String PWD="1234";
    private Connection conn;
    
    public String id;
    public String name;
    public String lastname;
    public String email;
    public String password;
    public String user;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }
    
    public List<Conexionlog> Conexionlog = new ArrayList<Conexionlog>();

    public List<Conexionlog> getConexionlog() {
        return Conexionlog;
    }

    public void setConexionlog(List<Conexionlog> Conexionlog) {
        this.Conexionlog = Conexionlog;
    }
    
    //creating conexion's variable.
    Connection conexionDatabase=null;
    
        //creatin result of that conexion.
    public String resConexion="error";
    
    //creating result data user.
    public String resdataUser="error";
    
    //creating result update user variable.
    public String resUpdateUser="error";
    
    //Creating public conection to users.
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
  
  public Connection getConexion(){
      return conn;
  
  }
  
   public String dataUser(){
        
        DBConexion();
        try {
            String sql="select * from admin where id='?' and password='?'";
            PreparedStatement datosDC=(PreparedStatement)conexionDatabase.prepareStatement(sql);
            datosDC.setString(1, id);
            ResultSet found= datosDC.executeQuery();
            while(found.next()){
                
                setId(found.getString("id"));
                setName(found.getString("name"));
                setLastname(found.getString("lastname"));
                setEmail(found.getString("email"));
                setPassword(found.getString("password"));
                setUser(found.getString("user"));
                
            }
            resdataUser="success";
            
        } catch (Exception e) {
        resdataUser="error";
        }
        return resdataUser;
    }
   
       public String updateUser(){
        DBConexion();
        try {
            String sql="update admin set name=?, lastname=?, email=?, password=?, user=? where id=?";
            PreparedStatement updUser=(PreparedStatement)conexionDatabase.prepareStatement(sql);
            updUser.setString(1, name);
            updUser.setString(2, lastname);
            updUser.setString(3, email);
            updUser.setString(4, password);
            updUser.setString(5, user);
            updUser.setString(8,id);
            updUser.executeUpdate();
            updUser.close();
            dataUser();
            resUpdateUser="success";
        } catch (Exception e) {
        resUpdateUser="error";
        }
        return resUpdateUser;
    }
       
       
}
