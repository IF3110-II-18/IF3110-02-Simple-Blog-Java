<%-- 
    Document   : SuccessfullyDeleted
    Created on : Nov 23, 2014, 6:22:36 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if (request.getSession().getAttribute("currentUser") == null) {            
                response.setStatus(response.SC_MOVED_TEMPORARILY);
                response.setHeader("Location", "Login.jsp"); 
            }
        %>
        <h1>Success: <%= (String)request.getSession().getAttribute("deleteUser") %></h1>
        <br>
        <a href="UserManagement">view</a>
    </body>
</html>