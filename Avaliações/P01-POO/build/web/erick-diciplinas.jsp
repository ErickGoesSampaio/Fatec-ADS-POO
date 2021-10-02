<%-- 
    Document   : natasha
    Created on : 2 de out. de 2021, 11:40:58
    Author     : yumi-
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sobre</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
        <% if (userSession != null) {%>
        <br>
        <label for="nome">Nome:</label>
        <label >Erick Goes Sampaio</label>
        <label for="matricula">Matrícula:</label>
        <label >1290482012044</label>
        <label for="inicioCurso">Início curso:</label>
        <label >01/2020</label>
        <a href="https://github.com/ErickGoesSampaio">GitHub de Erick Goes Sampaio</a>
        <hr>

        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">Sigla</th>
                    <th scope="col">Disciplina</th>
                    <th scope="col">Professor</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                        <td>IBD002</td>
                        <td>Banco de Dados</td>
                        <td>SIMONE MARIA VIANA ROMANO</td>
                    </tr>
                    <tr>
                        <td>ILP007</td>
                        <td>Programação Orientada a Objetos</td>
                        <td>RICARDO PUPO LARGUESA</td>
                    </tr>
                    <tr>
                        <td>ISO200</td>
                        <td>Sistemas Operacionais II</td>
                        <td>FÁBIO PESSOA DE SÁ</td>
                    </tr>
                    <tr>
                        <td>TTG001</td>
                        <td>Metodologia de Pesquisa Científica-Tecnológica</td>
                        <td>SABRINA MARTINS BOTO</td>
                    </tr>
            </tbody>
        </table>
        <% } else {%>
            Logue para ter acesso!
        <% } %>

    </body>
</html>
