<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>

<%
String emailid = request.getParameter("email");
String password = request.getParameter("pwd");

try {
	Connection con = null;

	Class.forName("com.mysql.cj.jdbc.Driver");
	System.out.println("Driver Classes Loaded");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsps3", "root", "Rakesh@123");
	System.out.println("Connection Established");

	PreparedStatement pstmt = con.prepareStatement("SELECT * FROM admin WHERE email=? AND password=?");

	pstmt.setString(1, emailid);
	pstmt.setString(2, password);
	ResultSet rs = pstmt.executeQuery();

	if (rs.next()) {
		if (emailid.equals("admin@gmail.com") && password.equals("admin")) {
			session.setAttribute("email", emailid);
			session.setAttribute("name", rs.getString(2));
			response.sendRedirect("adminreg.jsp");
		} else {
			out.println("Login Failed");
		}
	} else {
		out.println("Login Failed");
	}

} catch (Exception e) {
	out.println(e);
}
%>
