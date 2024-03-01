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

    // Check if admin credentials
    if (emailid.equals("admin@gmail.com") && password.equals("admin")) {
        session.setAttribute("email", emailid);
        session.setAttribute("name", "Admin");
        response.sendRedirect("adminreg.jsp");
    } else {
        // Check if regular user credentials
        PreparedStatement userPstmt = con.prepareStatement("SELECT * FROM ep WHERE email=? AND password=?");
        userPstmt.setString(1, emailid);
        userPstmt.setString(2, password);
        ResultSet userRs = userPstmt.executeQuery();

        if (userRs.next()) {
            session.setAttribute("email", emailid); // email is a session variable
            session.setAttribute("name", userRs.getString(2)); // name is a session variable
            response.sendRedirect("index.jsp");
        } else {
            response.sendRedirect("logout.html");
        }
    }

} catch (Exception e) {
    out.println(e);
}
%>
