package com.how2java.springboot.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.how2java.springboot.pojo.User;

public class DAO {

	 public    User getUser(String name, String password) {
	    	
	        User result = null;
	 
	        try {
	        	 Class.forName("com.mysql.jdbc.Driver");  
	 
	            Connection c = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/test? characterEncoding=UTF-8", "root",
	                    "594SHENG");   
	 
	            String sql = "select * from user where name = ? and passwork = ?";
	 
	            PreparedStatement ps = c.prepareStatement(sql);
	 
	            ps.setString(1, name);
	            ps.setString(2, password);
	            ResultSet rs = ps.executeQuery();
	 
	            if (rs.next()){
	                result = new User();
	                result.setPassword(password);
	                result.setName(name);
	            }
	 
	            ps.close();
	 
	            c.close();
	 
	        } catch (ClassNotFoundException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        } catch (SQLException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }
	        return result;
	    }
}
