package Conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class RetrieveIamgesDAO {

	public Connection connect() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		return (Connection) DriverManager.getConnection("jdbc:mysql://localhost/unstoppable", "root", "1234");
	}

	public ResultSet getData() {
		try {
			return connect().prepareStatement("SELECT tagnumber,name,age,pounds,color,category,sex,vaccins,price,comments,picture FROM dogs").executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public ResultSet getPhoto(String tagnumber) {
		try {
			PreparedStatement ps = connect().prepareStatement("SELECT picture FROM dogs WHERE tagnumber=?");
			ps.setString(1, tagnumber);
			return ps.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

}
