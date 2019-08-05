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
<title>Election Result</title>
</head>
<body>
 <center><h1>ELECTION RESULT</h1></center>
 <form action="AdminLogout.jsp">
<div class="but" align="right">
<input type="submit"  id="logout" name="logout" value="logout"/>
</div>
</form>
		<br>
		<br>
		<br>
		<table border="5" width=100>
		<tr>
		<td>PARTY</td>
	
		<td>COUNT</td>
		
		</tr>
<%
  
   String s1 = (String)session.getAttribute("adminname");
   
    //out.println(s1);
   
    String a[] = new String[100];
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "hr", "hr");
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery("select party,count(party) as c from vote_count group by party");
    int i=0;
    while(rs.next()){
       
    
    %>
    <tr> 
    <td> <%=rs.getString("party") %></td>
     <td> <%=rs.getString("c") %></td>
    </tr>
    <%}%>
		</table>
   
</body>
</html>