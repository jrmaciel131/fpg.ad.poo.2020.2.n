<%@page import="java.util.Set"%>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      <%@page import="br.edu.fatecpg.poo.Contatos"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    //lista de contatos
    ArrayList<Contatos> contatoList = (ArrayList) application.getAttribute("contatoList");
    if (contatoList == null) {
        contatoList = new ArrayList();
        contatoList.add(new Contatos("César Maciel", 991573715, "jr.maciel3@gmail.com"));
        application.setAttribute("contatoList", contatoList);
    }
    try {
        if (request.getParameter("add") != null) {
            String nome = request.getParameter("nome");
            int telefone = Integer.parseInt(request.getParameter("telefone"));
            String email = request.getParameter("email");
            contatoList.add(new Contatos(nome, telefone, email));
            response.sendRedirect(request.getRequestURI());
        }
        if (request.getParameter("remove") != null) {
            int i = Integer.parseInt(request.getParameter("i"));
            contatoList.remove(i);

            response.sendRedirect(request.getRequestURI());
        }
    } catch (Exception e) {
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>POO LISTA DE CONTATOS</title>
        <style>
            body {background-color: #696969;
                  text-align: center;
            }
            table{
                background-color: #FFFFFF;
                margin-left: auto;
                margin-right: auto;
                width: 100%;
            }
            form{
                font-weight: bold;
            }
            .voltar{
                text-decoration: none;
                font-weight: bold;
            }
        </style>
    </head>
    <body>
        <h1>Lista de contatos</h1>
        <form method="post">
            Nome: <input type="text" name="nome" placeholder="digite seu Nome aqui"/>
            Telefone: <input type="number" name="telefone" placeholder="digite seu Telefone aqui"/>
            Email: <input type="text" name="email" placeholder="digite seu Email aqui"/>
            <input type="submit" name="add" value="Adicionar"/>
        </form>
        <hr/>
        <table border="1" >
            <tr>
                <th>Índice</th>
                <th>Nome</th>
                <th>Telfone</th>
                <th>Email</th>
                <th>Comandos</th>
            </tr>
            <%for (int i = 0; i < contatoList.size(); i++) {%>
            <% Contatos contato = contatoList.get(i);%>
            <tr>
                <td><%= i%></td>
                <td><%= contato.getNome()%></td>
                <td><%= contato.getTelefone()%></td>
                <td><%= contato.getEmail()%></td>
                <td>
                    <form>
                        <input type="submit" name="remove" value="Remover"/>
                        <input type="hidden" name="i" value="<%= i%>"/>
                    </form>
                </td>
            </tr>
            <%}%>
        </table>
        <div class="voltar"><h2><a href="index.jsp">Voltar</a></h2></div>
    </body>
</html