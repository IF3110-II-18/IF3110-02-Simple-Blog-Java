<%-- 
    Document   : PublishPostStatus
    Created on : Nov 23, 2014, 9:44:46 PM
    Author     : Asep Saepudin
--%>

<%@page import="wbd.tubesII.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            User currentUser = (User)request.getSession().getAttribute("currentUser");
            if (currentUser == null) {            
                response.setStatus(response.SC_MOVED_TEMPORARILY);
                response.setHeader("Location", "Login.jsp"); 
            }        
            if (currentUser.getRole().equals("Owner")) {
                response.setStatus(response.SC_MOVED_TEMPORARILY);
                response.setHeader("Location", "UserLogged.jsp"); 
            }
        %>
                
        <h1>Status: <%= (String)request.getSession().getAttribute("PublishPostStatus") %></h1>
        <br>
        <a href="UserLogged.jsp">view</a>
    </body>
</html>

