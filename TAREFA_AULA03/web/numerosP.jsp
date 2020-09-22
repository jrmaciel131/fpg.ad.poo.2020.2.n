<%-- 
    Document   : numerosRandow
    Created on : 31/08/2020, 20:26:16
    Author     : jrmac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Exception requestException = null;
    int n;
    try {
        n = Integer.parseInt(request.getParameter("n"));
    } catch (Exception ex) {
        n = 0;
        requestException = ex;
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Java Server</h1>
        <h2>Numeros Parametizados</h2>
        <h3><a href="index.jsp">Voltar</a></h3>
        <form>
            Quantidade:
            <input type="number" name="n"/>
            <intput type="submit" value="Gerar"/>
        </form>
        <Br/>
        <table border="1">
            <tr>
                <th>Índice</th>
                <th>Número</th>
            </tr>
            <% if (request.getParameter("n") == null) { %>
            <tr><td colspan="2">Não há um parâmetro</td></tr>
            <% } else if (requestException != null) {%>
            <tr><td colspan="2">Parâmetro inválido</td></tr>
            <% } %>

            <% for (int i = 1; i <= n; i++) {%>
            <tr>
                <th><%= i%></th>
                <td><%= ((int) (100 * Math.random()))%></td>
            </tr>
            <% }%>
        </table>
    </body>
</html>
