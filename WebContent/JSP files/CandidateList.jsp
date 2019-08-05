<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>voter details</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<center>
		<h1>Voter List</h1>
		<br>
		<br>
		<br>
		<form action="AdminLogout.jsp">
		<div class="container" align="right">
			  <button type="button" class="btn btn-success">Logout</button>
		</div>
		</form>
		<table border="10" width=100>
		<tr>
		<td>CANDIDATE ID</td>
		<td>FULLNAME</td>
		<td>GENDER</td>
		<td>PARTY NAME</td>

		<td>STATE</td>
		<td>CONSTITUENCY</td>
		<td>DOB</td>
		<td>ADHAR_NO</td>
		<td>PASSWORD</td>
		<td>EMAIL</td>
		</tr>
		<%
		try{
			Connection connection = null;
            Class.forName("oracle.jdbc.driver.OracleDriver");
            connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "hr", "hr");
			Statement statement = connection.createStatement();
			String sql ="SELECT * FROM candidate";
			ResultSet resultSet = statement.executeQuery(sql);
		while(resultSet.next()){
		%>
		
		<tr>
		<td><%=resultSet.getString("s_no") %></td>
		<td><%=resultSet.getString("fullname") %></td>
		<td><%=resultSet.getString("gender") %></td>
		<td><%=resultSet.getString("party_name") %></td>
	
		
		<td><%=resultSet.getString("state") %></td>
		<td><%=resultSet.getString("constituency") %></td>
		<td><%=resultSet.getString("dob") %></td>
		<td><%=resultSet.getString("adhar_no") %></td>
		<td><%=resultSet.getString("password") %></td>
		<td><%=resultSet.getString("email") %></td>
		</tr>
		<%
		}
		connection.close();
		} catch (Exception e) {
		e.printStackTrace();
		}
		%>
		</table>
</center>
		</body>
		</html>	