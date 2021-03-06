<%-- 
    Document   : register
    Created on : Nov 20, 2014, 10:35:52 PM
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
    <%        
        User currentUser = (User)request.getSession().getAttribute("currentUser");
        if (currentUser == null) {            
            response.setStatus(response.SC_MOVED_TEMPORARILY);
            response.setHeader("Location", "Login.jsp"); 
        }        
        if (!currentUser.getRole().equals("Admin")) {
            request.getSession().setAttribute("adminOnly", "Psst! Halaman khusus Admin");
            response.setStatus(response.SC_MOVED_TEMPORARILY);
            response.setHeader("Location", "AdminOnly.jsp"); 
        }
    %>
    <body>
        <form action="Register" method="POST">
            Email
            <input type="text" name="email"/><br>		
            Password
            <input type="password" name="password"/><br>
            Name
            <input type="text" name="name"/><br>	
            Role:
            <select name="role">
                <option value="Admin">Admin</option>
                <option value="Owner">Owner</option>
                <option value="Editor">Editor</option>                
            </select>
            <input type="submit" value="submit">		
        </form>
    </body>
</html>
