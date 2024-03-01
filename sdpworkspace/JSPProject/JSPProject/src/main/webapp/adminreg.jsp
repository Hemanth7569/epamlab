<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
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
      max-width: 1000px;
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
    .logout-button {
  display: inline-block;
  padding: 10px 20px;
  background-color: #87CEEB;
  color: #000000;
  text-decoration: none;
  border-radius: 4px;
}

.logout-button:hover {
  background-color: #ADD8E6;
}
  </style>
  <title>Registered Details</title>
</head>

<body>
  <div class="container">
    <h1>Registered Users</h1>

    
    <table>
      <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Gender</th>
        <th>DOB</th>
        <th>Martial Status</th>
        <th>Email</th>
        <th>Contact</th>
      </tr>
      <% 
        try {
          Connection con = null;
          Class.forName("com.mysql.cj.jdbc.Driver");
          con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsps3", "root", "Rakesh@123");
          Statement stmt = con.createStatement();
          ResultSet rs = stmt.executeQuery("SELECT * FROM ep");

          while (rs.next()) {
            int id = rs.getInt("id");
            String name = rs.getString("name");
          
            String gender = rs.getString("gender");
            String dob = rs.getString("dob");
            String maritalstatus = rs.getString("maritalstatus");
            String email = rs.getString("email");
            String contact = rs.getString("contact");

            %>
            <tr>
              <td><%= id %></td>
              <td><%= name %></td>
              <td><%= gender %></td>
              <td><%= dob %></td>
              <td><%= maritalstatus %></td>
              <td><%= email %></td>
              <td><%= contact %></td>
              
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
     <a class="logout-button" href="login.html">Log Out</a>    
    </table>

    
    
  </div>
</body>

</html>
