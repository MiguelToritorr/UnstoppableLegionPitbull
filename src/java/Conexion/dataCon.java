/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexion;


import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Sakai
 */
public class dataCon extends Conexionlog {
    
    public boolean authentication(String user, String password){
        PreparedStatement ad=null;
        ResultSet res=null;
        
        try{
            String dataad="select *from admin where user=? and password=? ";
            ad=getConexion().prepareStatement(dataad);
            ad.setString(1, user);
            ad.setString(2, password);
            res=ad.executeQuery();
            if(res.absolute(1)){
                return true;
            }
        }catch(Exception e){
              resConexion="error";
        }finally{
            if(getConexion() != null && ad != null && res != null){
                try{
                    getConexion().close();
                    ad.close();
                    res.close();
                }catch(Exception e){
                }
            }
        }
                return false;
    }

}
