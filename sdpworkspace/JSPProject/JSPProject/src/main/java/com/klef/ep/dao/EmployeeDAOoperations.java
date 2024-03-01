package com.klef.ep.dao;

import java.sql.*;

public class EmployeeDAOoperations {
public int insertemployee(Employee emp) {
	int n=0;
	
	try {
		Connection con=DBConection.getConnection();
		
		PreparedStatement pstmt=con.prepareStatement("insert into employee values(?,?,?,?,?,?,?) ");
		pstmt.setInt(1, emp.getId());
		pstmt.setString(2,emp.getName());
		pstmt.setString(3,emp.getGender());
		pstmt.setDouble(4,emp.getSalary() );
		pstmt.setString(5,emp.getUsername());
		pstmt.setString(6,emp.getPassword());
		pstmt.setString(7,emp.getContactno());
		
		n=pstmt.executeUpdate();
		con.close();
	}
	
	catch (Exception e) {
		// TODO: handle exception
		System.out.println(e);
	}
	return n;
}
public boolean checkemplogin(String uname,String pwd) {
	
	boolean flag=false;
	try {
		Connection conn = DBConection.getConnection();
	    PreparedStatement ps=conn.prepareStatement("select * from employee where username=? and password=?");
	    ps.setString(1, uname);
	    ps.setString(2, pwd);
	    ResultSet rs=ps.executeQuery();
	    if(rs.next()) {
	    	flag=true;
	    }
	    
	}
	catch (Exception e) {
		// TODO: handle exception
		System.out.println(e);
	}
	return flag;
}
}
