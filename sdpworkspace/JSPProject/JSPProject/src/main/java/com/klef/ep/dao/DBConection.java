package com.klef.ep.dao;
import java.sql.*;
public class DBConection {
static Connection con=null;
public static Connection getConnection(){
	try {
		
	      Class.forName("com.mysql.cj.jdbc.Driver");
	        System.out.println("Driver Classes Loaded");
	       con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/jsps3", "root", "Rakesh@123");
	        System.out.println("Connection Established");
	}
	catch (Exception e) {
		// TODO: handle exception
		System.out.println(e);
	}
	return con;
}
}
