<%@page import="com.wipro.evs.Intialization.CandidateIntialization"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String state=request.getParameter("state");
String gender=request.getParameter("gender");
String partyname=request.getParameter("partyname");
  out.println("<br><br><font color='green'><center>");
  out.println(request.getParameter("state") +"  "+ request.getParameter("gender")+"  "+request.getParameter("partyname"));
  
%>
<p>The value of parameter state  is <%= state%>.</p>

<p>success<p>
</body>
</html>