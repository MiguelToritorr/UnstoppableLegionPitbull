/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexion;

/**
 *
 * @author Sakai
 */

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
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;
import org.apache.struts2.interceptor.SessionAware;



public class log extends ActionSupport implements SessionAware {
//creating conection variables.
    static  final String JDBC_DRIVER="com.mysql.jdbc.Driver";
    static final String DB_URL="jdbc:mysql://localhost:3306/unstoppable";
    static final String USER="root";
    static final String PASSWD="1234";
    String id;
    String password;
    String name;
    

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
     //Creating Session result.
    public String resSession="error";
    public String typeError;
    //creating conexion's variable.
    Connection conexionDatabase=null;
    //creatin result of that conexion.
    public String resConexion="error";
     public String DBConexion(){
    try{
       Class.forName(JDBC_DRIVER);
       conexionDatabase=(Connection)DriverManager.getConnection(DB_URL,USER,PASSWD);
       resConexion="success";
    }catch(Exception e){
        resConexion="error";
    }
        return resConexion;
    }  
     
           public String InicioSesion(){
        
        DBConexion();
        
        try {
        String sql="select * from clients where name=? and password=? and typeUser='buyer'";
            PreparedStatement BuscaU =(PreparedStatement)conexionDatabase.prepareStatement(sql);
            BuscaU.setString(1, name);
            BuscaU.setString(2, password);
            
            ResultSet Encontrado=BuscaU.executeQuery();
            if(Encontrado.next()){
                 sesion.put("name", name);
                               resSession="success";
            }
            else{
              inicioAdmin();  
            }
             } catch (Exception e) {
                typeError=e.toString();
                System.err.print(e);
                System.out.println("Error"+typeError);
                resSession="error";
            }
                
                System.out.println("Error"+typeError);
                return resSession;
      }
               public String inicioAdmin(){
               DBConexion();
        
        try {
        String sql="select * from clients where name=? and password=? and typeUser='admin'";
            PreparedStatement BuscaU =(PreparedStatement)conexionDatabase.prepareStatement(sql);
            BuscaU.setString(1, name);
            BuscaU.setString(2, password);
            
            ResultSet Encontrado=BuscaU.executeQuery();
            if(Encontrado.next()){
                 sesion.put("name", name);
                               resSession="successAdmin";
            }
            else{
                
            }
             } catch (Exception e) {
                typeError=e.toString();
                System.err.print(e);
                System.out.println("Error"+typeError);
                resSession="error";
            }
                
                System.out.println("Error"+typeError);
                return resSession;
    }
    
 //creating stotre variable
    private Map<String, Object> sesion;

    @Override
    public void setSession(Map<String, Object> map) {
        this.sesion=map;//To change body of generated methods, choose Tools | Templates.
    }
    
public String outSession(){
     this.sesion.remove("id");
     this.sesion.remove("name");
     this.sesion.remove("typeUser");
       this.sesion.clear();
       return "success";
    
}
}
