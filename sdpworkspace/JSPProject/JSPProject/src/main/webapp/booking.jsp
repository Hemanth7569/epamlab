<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<%
// Get the email and name from session
String emaill = (String) session.getAttribute("email");
String namee = (String) session.getAttribute("name");

// Check if email and name are not null before printing
if (emaill != null && namee != null) {
    // Print the email and name in the console
    System.out.println("I am in bookings page");
    System.out.println("Email: " + emaill);
    System.out.println("Name: " + namee);
    
} else {
    System.out.println("Email or Name is not set in the session.");
}
%>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
    }

    .container {
      max-width: 600px;
      margin: 0 auto;
      padding: 20px;
      background-color: #fff;
      margin-top: 50px;
      border-radius: 5px;
    }

    h1 {
      text-align: center;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 20px;
    }

    th,
    td {
      padding: 10px;
      text-align: left;
      border-bottom: 1px solid #ddd;
    }

    th {
      background-color: #f2f2f2;
    }
  </style>
  <title>Booking Details</title>
</head>

<body>
  <div class="container">
    <h1>Booking Details</h1>

    <h2>Hotel Bookings</h2>
    <table>
      <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Phone</th>
        <th>Message</th>
      </tr>
      <% 
        try {
          Connection con = null;
          Class.forName("com.mysql.cj.jdbc.Driver");
          con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsps3", "root", "Rakesh@123");
          Statement stmt = con.createStatement();
          ResultSet rs = stmt.executeQuery("SELECT * FROM hotel where email='"+emaill+"'");

          while (rs.next()) {
            int id = rs.getInt("id");
            String name = rs.getString("name");
            String email = rs.getString("email");
            String phone = rs.getString("phone");
            String message = rs.getString("message");

            %>
            <tr>
              <td><%= id %></td>
              <td><%= name %></td>
              <td><%= email %></td>
              <td><%= phone %></td>
              <td><%= message %></td>
            </tr>
            <% 
          }

          rs.close();
          stmt.close();
        } catch (Exception e) {
          out.println("Error: " + e.getMessage());
          e.printStackTrace();
        }
      %>
    </table>

    <h2>Tour Bookings</h2>
    <table>
      <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Phone</th>
        <th>Date</th>
      </tr>
      <% 
        try {
          Connection con = null;
          Class.forName("com.mysql.cj.jdbc.Driver");
          con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsps3", "root", "Rakesh@123");
          Statement stmt = con.createStatement();
          ResultSet rs = stmt.executeQuery("SELECT * FROM tour where email='"+emaill+"'");

          while (rs.next()) {
            int id = rs.getInt("id");
            String name = rs.getString("name");
            String email = rs.getString("email");
            String phone = rs.getString("phone");
            String date = rs.getString("date");

            %>
            <tr>
              <td><%= id %></td>
              <td><%= name %></td>
              <td><%= email %></td>
              <td><%= phone %></td>
              <td><%= date %></td>
            </tr>
            <% 
          }

          rs.close();
          stmt.close();
        } catch (Exception e) {
          out.println("Error: " + e.getMessage());
          e.printStackTrace();
        }
      %>
    </table>

    <h2>Car Bookings</h2>
    <table>
      <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Phone</th>
        <th>Date</th>
      </tr>
      <% 
        try {
          Connection con = null;
          Class.forName("com.mysql.cj.jdbc.Driver");
          con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsps3", "root", "Rakesh@123");
          Statement stmt = con.createStatement();
          ResultSet rs = stmt.executeQuery("SELECT * FROM car where email='"+emaill+"'");

          while (rs.next()) {
            int id = rs.getInt("id");
            String name = rs.getString("name");
            String email = rs.getString("email");
            String phone = rs.getString("phone");
            String date = rs.getString("date");

            %>
            <tr>
              <td><%= id %></td>
              <td><%= name %></td>
              <td><%= email %></td>
              <td><%= phone %></td>
              <td><%= date %></td>
            </tr>
            <% 
          }

          rs.close();
          stmt.close();
          con.close();
        } catch (Exception e) {
          out.println("Error: " + e.getMessage());
          e.printStackTrace();
        }
      %>
    </table>
  </div>
</body>

</html>
