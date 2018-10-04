/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexion;
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
import javax.servlet.http.HttpSession;
import org.apache.struts2.interceptor.SessionAware;
/**
 *
 * @author Sakai
 */
public class clients 
{
    //Creating dataBase connction String.
     static final String  JDBC_DRIVER="com.mysql.jdbc.Driver";
    static final String URL_BD="jdbc:mysql://localhost:3306/unstoppable";
    static final String USER="root";
    static final String PWD="1234";
    
    //creating variables of clients realted to database.
    public String id;
    public String name;
    public String lastname;
    public String phone;
    public String address;
    public String city;
    public String state;
    public String country;
    public String password;
    public String email;
    public String zipcode;
    public String typeUser;



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

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getZipcode() {
        return zipcode;
    }

    public void setZipcode(String zipcode) {
        this.zipcode = zipcode;
    }
    public String getTypeUser() {
        return typeUser;
    }

    public void setTypeUser(String typeUser) {
        this.typeUser = typeUser;
    }

    //arrayList to use dataClients
    public List <clients> clientss=new ArrayList<clients>();

    public List<clients> getClients() {
        return clientss;
    }

    public void setClients(List<clients> clients) {
        this.clientss = clients;
    }
    
   //arayList to use data single client.
    public List <clients> dclient=new ArrayList<clients>();

    public List<clients> getDclient() {
        return dclient;
    }

    public void setDclient(List<clients> dclient) {
        this.dclient = dclient;
    }

 
   
    
    
    
    //creatin result of that conexion.
    public String resConexion="error";
    
    //creating result sign in of clients.
    public String resRegClients="error";
    
    public String resUpdClients="error";
    
    public String resCGen="error";
     public String resCGend="error";
    
    public String resClient="error";
    
    public String resClientsGDeneral="error";
    
    //creating data client count
    public String resClientCount="error";
    
    //creating conexion's variable.
    Connection conexionDatabase=null;
    
    //creating method conexion.
    
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
    
    
    public String regClient(){
        
        DBConexion();
        try{
            //creating client register
            String sqlReg ="insert into clients values(?,?,?,?,?,?,?,?,?,?,?,'buyer')";
            PreparedStatement dataclient = (PreparedStatement)conexionDatabase.prepareStatement(sqlReg);
            dataclient.setString(1, id);
            dataclient.setString(2, name);
            dataclient.setString(3, lastname);
            dataclient.setString(4, phone);
            dataclient.setString(5, address);
            dataclient.setString(6, city);
            dataclient.setString(7, state);
            dataclient.setString(8, country);
            dataclient.setString(9, password);
            dataclient.setString(10,email );
            dataclient.setString(11, zipcode);
            dataclient.executeUpdate();
            
            resRegClients="success";
            dataClientCount();
        }catch(Exception e){
            resRegClients="error";
        }
        return resRegClients;
        
    }
     //creating data clients
    public String dataClients(){
        DBConexion();
        clientss.clear();
        try{
            String sql = "select * from clients";
            PreparedStatement user = (PreparedStatement)conexionDatabase.prepareStatement(sql);
            ResultSet data = user.executeQuery(sql);
            while(data.next()){
                clients client = new clients();
                client.setId(data.getString("id"));
                client.setName(data.getString("name"));
                client.setLastname(data.getString("lastname"));
                client.setPhone(data.getString("phone"));
                client.setAddress(data.getString("address"));
                client.setCity(data.getString("city"));
                client.setState(data.getString("state"));
                client.setCountry(data.getString("country"));
                client.setPassword(data.getString("password"));
                client.setEmail(data.getString("email"));
                client.setZipcode(data.getString("zipcode"));
                this.clientss.add(client);
            }
            resCGen = "success";
        }catch(Exception e){
            resCGen = "error";
        }
        return resCGen;
    } 
    
     //creating data client
    public String dataClient(){
        DBConexion();
        //dclient.clear();
        try{
            String sql = "select * from clients where name=? and password=? and typeUser='buyer'";
            PreparedStatement user = (PreparedStatement)conexionDatabase.prepareStatement(sql);
            ResultSet data = user.executeQuery(sql);
            while(data.next()){
                clients client = new clients();
                client.setId(data.getString("id"));
                client.setName(data.getString("name"));
                client.setLastname(data.getString("lastname"));
                client.setPhone(data.getString("phone"));
                client.setAddress(data.getString("address"));
                client.setCity(data.getString("city"));
                client.setState(data.getString("state"));
                client.setCountry(data.getString("country"));
                client.setPassword(data.getString("password"));
                client.setEmail(data.getString("email"));
                client.setZipcode(data.getString("zipcode"));
                //this.dclient.add(client);
            }
            resCGend = "success";
        }catch(Exception e){
           
            resCGend = "error";
        }
        return resCGend;
    } 
    //creating delete clients
    public String deleteClient(){
    
    DBConexion();
    try {
        String sql="delete from clients where id=?";
        PreparedStatement delClient= (PreparedStatement)conexionDatabase.prepareStatement(sql);
        delClient.setString(1, id);
        delClient.executeUpdate();
        resClient="success";
    } catch (Exception e) {
    resClient="error";
    }
    return resClient;
    }
    //creating update clients method
    public String updatedataClients(){
        DBConexion();
        try {
            String sql="UPDATE clients SET name=?, lastname=?, phone=?, address=?, city=?, state=?, country=?, password=?, email=?, zipcode=? WHERE id='"+id+"' and password='"+password+"'";
            PreparedStatement uClient=(PreparedStatement)conexionDatabase.prepareStatement(sql);
            uClient.setString(1, name);
            uClient.setString(2, lastname);
            uClient.setString(3, phone);
            uClient.setString(4, address);
            uClient.setString(5, city);
            uClient.setString(6, state);
            uClient.setString(7, country);
            uClient.setString(8, password);
            uClient.setString(9, email);
            uClient.setString(10, zipcode);
            uClient.executeUpdate();
            uClient.close();
            resUpdClients="success";
            dataClientCount();
        } catch (Exception e) {
        resUpdClients="error";
        }
        return resUpdClients;
    }

    
    
    public String dataClientCount(){
         DBConexion();
         dclient.clear();
        try {
            String sql = "select * from clients where name=? and password=? and typeUser='buyer'";
            PreparedStatement datosCount=(PreparedStatement)conexionDatabase.prepareStatement(sql);
            datosCount.setString(1, name);
            datosCount.setString(2, password);
            ResultSet foundCount= datosCount.executeQuery();
            while(foundCount.next()){
                clients clientC = new clients();
                clientC.setId(foundCount.getString("id"));
                clientC.setName(foundCount.getString("name"));
                clientC.setLastname(foundCount.getString("lastname"));
                clientC.setPhone(foundCount.getString("phone"));
                clientC.setAddress(foundCount.getString("address"));
                clientC.setCity(foundCount.getString("city"));
                clientC.setState(foundCount.getString("state"));
                clientC.setCountry(foundCount.getString("country"));
                clientC.setPassword(foundCount.getString("password"));
                clientC.setEmail(foundCount.getString("email"));
                clientC.setZipcode(foundCount.getString("zipcode"));
                this.dclient.add(clientC);
            }
            resClientCount="success";
            
        } catch (Exception e) {
        resClientCount="error";
        }
        
        
        return resClientCount;
    }
    
    
   //creating stotre variable
    private Map<String, Object> SessionUser;
    public String outSession(){
       
       this.SessionUser.remove("id");
       this.SessionUser.clear();
       return "success";
   }
}








