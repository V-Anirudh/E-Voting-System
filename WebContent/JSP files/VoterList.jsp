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
<style type="text/css">
body{
/*background:gray url("http://www.livenewsmalta.com/wp-content/uploads/2017/05/a-man-voting.jpg");*/
background-position: center  center;
background-repeat: no-repeat;
background-size: 1200px 1250px;


}
/*table, th, td {
  border: 1.25px solid black;
  border-style: ridge;
  font-style:  italic;
  font-size: 3ex;
  color: black;
  background-color: #ffffff;
  opacity: .90;
 
}*/
table {
  border-collapse: collapse;
  width: 100%;
}

tr, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
   font-style:  oblique;
  font-size: 3ex;
  
}

tr:hover {background-color:#f5f5f5;}
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body >
<center>
<br>
<br>
<br>
		<form action="AdminLogout.jsp">
		<div class="container" align="right">
			  <button type="button" class="btn btn-success">Logout</button>
		</div>
		</form>
		<h1>VOTER LIST</h1>
		<br>
		<br>
		<br>
		<table border="5" width=100>
		<tr>
		<td>VOTER ID</td>
		<td>FULLNAME</td>
		<td>EMAIL</td>
		<td>ADDRESS</td>
		<td>GENDER</td>
		<td>STATE</td>
		<td>CONSTITUENCY</td>
		<td>DOB</td>
		<td>ADHAR_NO</td>
		<td>PASSWORD</td>
		</tr>
		<%
		try{
			Connection connection = null;
            Class.forName("oracle.jdbc.driver.OracleDriver");
            connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "hr", "hr");
			Statement statement = connection.createStatement();
			String sql ="SELECT * FROM voter";
			ResultSet resultSet = statement.executeQuery(sql);
		while(resultSet.next()){
		%>
		
		<tr>
		<td><%=resultSet.getString("s_no") %></td>
		<td><%=resultSet.getString("full_name") %></td>
		<td><%=resultSet.getString("email") %></td>
		<td><%=resultSet.getString("address") %></td>
		<td><%=resultSet.getString("gender") %></td>
		<td><%=resultSet.getString("state") %></td>
		<td><%=resultSet.getString("constituency") %></td>
		<td><%=resultSet.getString("dob") %></td>
		<td><%=resultSet.getString("adhar_no") %></td>
		<td><%=resultSet.getString("password") %></td>
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