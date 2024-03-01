<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<title>EP</title>
<style>
body {
  margin: 0;
  padding: 0;
  font-family: Arial, sans-serif;
  background-image: url("https://img.freepik.com/free-vector/flat-design-travel-background_23-2149193475.jpg?w=2000"); /* Replace with your preferred background image URL */
  background-size: cover;
}

.container {
  max-width: 600px;
  margin: 50px auto;
  padding: 30px;
  border-radius: 8px;
  background-color: rgba(255, 255, 255, 0.9);
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

h2 {
  text-align: center;
  color: #333;
  margin-bottom: 20px;
}

form {
  margin-top: 20px;
  padding: 20px; /* Add padding to the form */
}

table {
  margin: 0 auto;
}

td {
  padding: 10px;
}

input[type="text"],
input[type="date"],
input[type="email"],
input[type="password"],
input[type="number"],
select {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  font-size: 16px;
  margin-bottom: 10px;
}

input[type="submit"],
input[type="reset"] {
  display: block;
  width: 100%;
  padding: 12px;
  border: none;
  border-radius: 4px;
  background-color: #4CAF50;
  color: #fff;
  cursor: pointer;
  transition: background-color 0.3s;
}

input[type="submit"]:hover,
input[type="reset"]:hover {
  background-color: #45a049;
}

a {
  display: block;
  text-align: center;
  margin-top: 20px;
  color: #666;
  text-decoration: none;
}

.error-message,
.success-message {
  color: #FFF;
  text-align: center;
  padding: 10px 0;
  border-radius: 5px;
}

.error-message {
  background-color: #E57373;
}

.success-message {
  background-color: #81C784;
}
</style>
</head>
<body>
  <div class="container">
    <h2>User Registration</h2>
    <form method="post" action="insertep.jsp">
      <table>
        <tr>
          <td><b>Full Name</b></td>
          <td><input type="text" name="name" required></td>
        </tr>
        <tr>
          <td><b>Select Gender</b></td>
          <td>
            Male<input type="radio" name="gender" value="male" required>
            Female<input type="radio" name="gender" value="female" required>
          </td>
        </tr>
        <tr>
          <td><b>Date Of Birth</b></td>
          <td><input type="date" name="dob" required></td>
        </tr>
        <tr>
          <td><b>Marital Status</b></td>
          <td>
            <select name="mstatus" required>
              <option value="">---Select---</option>
              <option value="single">Single</option>
              <option value="married">Married</option>
            </select>
          </td>
        </tr>
        <tr>
          <td><b>Email ID</b></td>
          <td><input type="email" name="email" required></td>
        </tr>
        <tr>
          <td><b>Password</b></td>
          <td><input type="password" name="pwd" required></td>
        </tr>
        <tr>
          <td><b>Contact No</b></td>
          <td><input type="number" name="contactno" required></td>
        </tr>
        <tr>
          <td colspan="2" align="center">
            <input type="submit" value="Register">
          </td>
        </tr>
      </table>
    </form>
    <a href="login.html">Already have an account? Click here</a>

    <%-- Display error or success message if passed from insertep.jsp --%>
    <%
      String errorMessage = (String) request.getAttribute("errorMessage");
      String successMessage = (String) request.getAttribute("successMessage");

      if (errorMessage != null) {
    %>
      <div class="error-message"><%= errorMessage %></div>
    <% } %>

    <% if (successMessage != null) { %>
      <div class="success-message"><%= successMessage %></div>
    <% } %>
  </div>

  <%!
  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException {
    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String dob = request.getParameter("dob");
    String mstatus = request.getParameter("mstatus");
    String email = request.getParameter("email");
    String pwd = request.getParameter("pwd");
    String contactno = request.getParameter("contactno");

    try {
      Connection con = null;

      Class.forName("com.mysql.cj.jdbc.Driver");
      System.out.println("Driver Classes Loaded");
      con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsps3", "root", "Rakesh@123");
      System.out.println("Connection Established");

      PreparedStatement pstmt = con.prepareStatement("INSERT INTO ep(name,gender,dob,maritalstatus,email,password,contact) VALUES(?,?,?,?,?,?,?)");
      pstmt.setString(1, name);
      pstmt.setString(2, gender);
      pstmt.setString(3, dob);
      pstmt.setString(4, mstatus);
      pstmt.setString(5, email);
      pstmt.setString(6, pwd);
      pstmt.setString(7, contactno);

      int n = pstmt.executeUpdate();
      if (n > 0) {
        response.sendRedirect("index.html");
      }
      con.close();
    } catch (Exception e) {
      e.printStackTrace();
    }
  }
  %>

</body>
</html>
