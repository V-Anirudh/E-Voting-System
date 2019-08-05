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
<title>Insert title here</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
   <style>
  

table {
  border-collapse: collapse;
  width: 50%;
}

th, tr, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}

tr:hover {background-color:#f5f5f5;}

img {
  border-radius: 50%;
}

.center {
  display: block;
  margin-left: auto;
  margin-right: auto;
  
}
.header {
  padding: 35px;
  text-align: center;
  background: linear-gradient(to bottom right, #ff9933 20%,#ffffff  , #228B22 65%);
  color: white;
   font-size: 50px;
  font-family:fantasy;
}
  </style>
</head>
<body>
<% 
	String name=request.getParameter("fullname");
	String state=request.getParameter("state");
	String constiteuncy=request.getParameter("constituency");
	Long adhar=Long.parseLong(request.getParameter("adhar"));
	String election=request.getParameter("election");
	String party=request.getParameter("partyname");
	String dob=request.getParameter("dob");
	int year=Integer.parseInt(request.getParameter("year"));
	String email=request.getParameter("email");
	String gender=request.getParameter("gender");
	String password=request.getParameter("password");

%>
<%
		try{
			Connection connection = null;
            Class.forName("oracle.jdbc.driver.OracleDriver");
            connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "hr", "hr");
			Statement statement = connection.createStatement();
			ResultSet rs=statement.executeQuery("select s_no from candidate where email='"+email+"'");
%><form action="CandidateLogout.jsp" >
 <div class="header">
  <font size="9" color="#000080">E-VOTING SYSTEM</font>
  <p style="padding-left: 400px;">&#8220;<font color="white" size="4">The ballot is stronger than the bullet.&#8220;- Abraham Lincoln</font> </p>
</div> 
<div id="section1" class="container-fluid" style="padding-top:70px;padding-bottom:70px">
<div class="but" align="right">
<input type="submit"  id="logout" name="logout" value="logout"/>
</div>
 <h1 align="center">Candidate Details</h1>


<table align="center">
  <tr>
    <td>Name</td>
    <td><%=name %></td>
  </tr>
  <tr>
    <td>State</td>
    <td><%=state %></td>
  </tr> 
<tr>
    <td>Constituency</td>
    <td><%=constiteuncy %></td>
  </tr>
<tr>
    <td>Party</td>
    <td><%=party %></td>
  </tr>
  <tr>
    <td>Year</td>
    <td><%=year %></td>
  </tr>
<tr>
    <td>Adhar No</td>
    <td><%=adhar %></td>
  </tr>
<tr>
    <td>Date of birth</td>
    <td> <%=dob %></td>
  </tr>
  <tr>
    <td>Gender</td>
    <td> <%=gender %></td>
  </tr>
  <tr>
    <td>Candidate ID</td>
   <%if(rs.next())
		{%>
		  <td> <%=rs.getInt("s_no") %></td>
		<%} %>s
    
  </tr>
</table>
<%
		}catch(Exception e) 
{
System.out.println(e);	
}

%>
</div>
</form>
</body>
</html>