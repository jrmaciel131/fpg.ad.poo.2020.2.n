<%-- 
    Document   : server-date
    Created on : 31/08/2020, 19:52:43
    Author     : jrmac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Java server</h1>
        <h2> usando scriptlet</h2
        <%
            java.util.Date agora = new java.util.Date();
            out.println("<h3>agora no servidor " + agora + "</h3>");
        %>
        <h2>usando expression</h2>
        <h3>agora no servidor : <%=agora%></h3>
        <h2><a href="index.jsp">Voltar</a></h2>
    </body>
</html>
