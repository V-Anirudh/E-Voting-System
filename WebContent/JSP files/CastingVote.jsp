
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
<title>CastingVote</title>
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
.submit
{
text-align: center;
}
  </style>
  
</head>
<body>

 <div class="header">
  <font size="9" color="#000080">E-VOTING SYSTEM</font>
  <p style="padding-left: 400px;">&#8220;<font color="white" size="4">The ballot is stronger than the bullet.&#8220;- Abraham Lincoln</font> </p>
</div> 
	<%
	String name=request.getParameter("fullname");
	String state=request.getParameter("state");
	String constiteuncy=request.getParameter("constituency");
	String adhar=request.getParameter("adhar");
	//int voter=Integer.parseInt(request.getParameter("s_no"));
	
	String email=request.getParameter("email");
	%>
	
	
		<%
		try{
			Connection connection = null;
            Class.forName("oracle.jdbc.driver.OracleDriver");
            connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "hr", "hr");
			Statement statement = connection.createStatement();
			String sql ="select  party_name  from  candidate";
			ResultSet resultSet = statement.executeQuery(sql);
			Statement statement1 = connection.createStatement();
			ResultSet rs=statement1.executeQuery("select s_no from voter where email='"+email+"'");
		%>
<div id="section1" class="container-fluid" style="padding-top:70px;padding-bottom:70px">
<hr>

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
    <td>Adhar No</td>
   	<td><%=adhar %></td>
  </tr>
<tr>
    <td>VOTER ID</td>
   <%if(rs.next())
		{%>
		 <td>  <%=rs.getInt("s_no") %> </td>
		<%} %>
  </tr>
</table>
</div>

	
		<br>
		<br>
		<br>
		
		<!-- --first form tag -->
		<form action="VoteCount" method="post">
		
			
	
			<div class="form-group">
     			 <label for="usr">VOTER ID:</label>
     	 			<input type="text" class="form-control" id="voterid" name="voterid">
    		</div>
			 
     	  <div class="poseidn" align="center">
       		<font size="5" ><p align="center">Select any party to cast your vote</p></font><br>
        	<div id="styled-select">
        		<select autofocus="autofocus" name="party" id="party" required="required" >
     	   <%  while(resultSet.next()){ %>
     	       <option><%= resultSet.getString(1)%></option>
     		   <% } %>
     	   </select>
     	   <br><br><br>

		<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>

<div class="submit">
<button name ="submit" class="submit" value="submit" onclick="CastSuccess.jsp" class="btn btn-success"> Submit </button>
</div>

</form>
</div>

</body>
</html>