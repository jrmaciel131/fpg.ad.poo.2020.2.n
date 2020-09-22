<%-- 
    Document   : numerosRandow
    Created on : 31/08/2020, 20:26:16
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
        <h1>Java Server</h1>
        <h2>Numeros aleatorios</h2>
        <h3><a href="index.jsp">Voltar</a></h3>
        <table border="1">
            <tr>
                <th>Numeros</th>
            </tr>
            <%
                for (int i = 0; i < 10; i++) {%>
                <tr>
                    <td><%= ((int) (100*Math.random())) %>
                </tr>    
                   
            <%}%>
            
        </table>
    </body>
</html>
