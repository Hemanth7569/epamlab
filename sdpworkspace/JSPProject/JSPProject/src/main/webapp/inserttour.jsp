<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>

<%
 String name=request.getParameter("name");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
String date=request.getParameter("date");

try{
	Connection con = null;
    
    Class.forName("com.mysql.cj.jdbc.Driver");
      System.out.println("Driver Classes Loaded");
     con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/jsps3", "root", "Rakesh@123");
      System.out.println("Connection Established");
      
      PreparedStatement pstmt = con.prepareStatement("  insert into tour(name,email,phone,date) values(?,?,?,?)  ");
      pstmt.setString(1, name);
      pstmt.setString(2,email);
      pstmt.setString(3, phone);
      pstmt.setString(4,date);
    
      
      int n=pstmt.executeUpdate();
      if(n>0){
    	  response.sendRedirect("booksuccess.html");
      }
      con.close();
}
catch(Exception e){
	
}
%>