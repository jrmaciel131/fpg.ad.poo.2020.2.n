<%-- 
    Document   : nome-idade
    Created on : 31/08/2020, 20:05:39
    Author     : jrmac
--%>

<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
        <%
            int anoAtual = Calendar.getInstance().get(Calendar.YEAR);
            int nacismento = 2001;
            int result = anoAtual - nacismento;
            String nome = "César Maciel";
        %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nome e idade</title>
    </head>
    <body>
        <h1>Nome e idade</h3>
        <h2>
            Nome: <%= nome%><br/>
            Idade: <%= result%>
        </h2>
        <h3><a href="index.jsp">Voltar</a></h1>
        
    </body>
</html>
