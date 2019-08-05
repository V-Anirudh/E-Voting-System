<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
    <head>
       <meta charset="ISO-8859-1">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
          HttpSession session1 = request.getSession();
          session1.invalidate();
          response.sendRedirect("HomePage.jsp");
        %>
        
    </body>
</html>
