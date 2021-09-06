<%-- 
    Document   : calendario
    Created on : 4 de set. de 2021, 10:37:58
    Author     : Erick Goes Sampaio
--%>



<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    
       
    String errorMessage = null;
    int m = 0;
    String mes="";
    int dias = 0;
    
    try{
        m = Integer.parseInt(request.getParameter("m"));
        
        if(m == 1){
            mes = "Janeiro";
            
        }else if(m == 2){
            mes = "Fevereiro";
            
        }else if(m == 3){
            mes = "Março";
            
        }else if(m == 4){
            mes = "Abril";
            
        }else if(m == 5){
            mes = "Maio";
            
        }else if(m == 6){
            mes = "Junho";
            
        }else if(m == 7){
            mes = "Julho";
            
        }else if(m == 8){
            mes = "Agosto";
            
        }else if(m == 9){
            mes = "Setembro";
            
        }else if(m == 10){
            mes = "Outubro";
            
        }else if(m == 11){
            mes = "Novembro";
            
        }else if(m == 12){
            mes = "Dezembro";
        }                                    
              
        
    }catch(Exception e){
        errorMessage = "Erro ao ler parâmetro mês" + request.getParameter("m");
    }
    
    int y = 0;
    
    try{
       y = Integer.parseInt(request.getParameter("y"));        
        
    }catch(Exception e){
        errorMessage = "Erro ao ler parâmetro ano" + request.getParameter("y");
    }
    
    
            
%>


<%
    Calendar c = Calendar.getInstance();
    c.set(Calendar.YEAR, y);
    c.set(Calendar.MONTH, m-1);
    c.set(Calendar.DAY_OF_MONTH,1);
    c.get(Calendar.DAY_OF_WEEK);
    
    Integer date = (c.get(Calendar.DAY_OF_WEEK));    
    Integer year =(c.get(Calendar.YEAR));
    Integer month =(c.get(Calendar.MONTH));
    Integer week =(c.get(Calendar.DAY_OF_MONTH));
    
%>

<html>
    <head>
        <title>Calendario</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <header>
            
            <div>
                <h2><a href="index.html"> < Voltar</a></h2>
            </div>
            
            <div class="title">
            <h1>Calendário</h1>
            </div>
            
            <div>
                
            </div>
            
            
        </header>
        
        <article>
            <div class="flex-container">
                
                <table class="calendario">
                    <tr class="mes"><th colspan="4"><%= mes %></th><th colspan="3"><%= y %></th></tr>
                    <tr class="dia"><th>DOM</th><th>SEG</th><th>TER</th><th>QUA</th><th>QUI</th><th>SEX</th><th>SAB</th></tr>                 
                  
                     
                                        
                    
                    <!--30 dias--------------------------------------------------------------------------------------->
                    <% if(m == 4 || m == 5 || m == 9 || m == 11 ){ 
                    
                    int cont = 1;
                    %>
                    
                       <%for(int i = 1;i<=6;i++){%> <!--quantidade maxima de semanas em um mes-->

                        <tr>            
                            <% if(cont == 1){%> <!--primeira semana ( para cair  no dia certo)-->
                                <% for(int j = 1;j<=7;j++){%> <!--dias numericos-->

                                    <%if(j >= date){%>

                                        <%if(cont < 31){%>

                                            <th><%= cont++ %></th>

                                        <%}%>

                                    <%}else{%>

                                        <th></th>

                                    <%}%>

                                <%}%>

                            <%}else{%><!--Semanas posteriores-->
                                <% for(int j = 1;j<=7;j++){%> <!--dias numericos-->

                                    <%if(cont < 31){%>

                                        <th><%= cont++ %></th>

                                    <%}%>     
                                <%}%>  
                            <%}%>
                        </tr>
                    <%}%>
                <%}
                
                
                else if(m == 2 && y%4==0 ){int cont = 1;%><!--29 dias--------------------------------------------------------------------------------------->
                    
                       <%for(int i = 1;i<=6;i++){%> <!--quantidade maxima de semanas em um mes-->

                        <tr>            
                            <% if(cont == 1){%> <!--primeira semana ( para cair  no dia certo)-->
                                <% for(int j = 1;j<=7;j++){%> <!--dias numericos-->

                                    <%if(j >= date){%>

                                        <%if(cont < 30){%>

                                            <th><%= cont++ %></th>

                                        <%}%>

                                    <%}else{%>

                                        <th></th>

                                    <%}%>

                                <%}%>

                            <%}else{%><!--Semanas posteriores-->
                                <% for(int j = 1;j<=7;j++){%> <!--dias numericos-->

                                    <%if(cont < 30){%>

                                        <th><%= cont++ %></th>

                                    <%}%>     
                                <%}%>  
                            <%}%>
                        </tr>
                    <%}%>
                <%}        
                          
                
                else if(m == 2 ){ int cont = 1;%><!--28 dias--------------------------------------------------------------------------------------->
                    
                       <%for(int i = 1;i<=6;i++){%> <!--quantidade maxima de semanas em um mes-->

                        <tr>            
                            <% if(cont == 1){%> <!--primeira semana ( para cair  no dia certo)-->
                                <% for(int j = 1;j<=7;j++){%> <!--dias numericos-->

                                    <%if(j >= date){%>

                                        <%if(cont < 29){%>

                                            <th><%= cont++ %></th>

                                        <%}%>

                                    <%}else{%>

                                        <th></th>

                                    <%}%>

                                <%}%>

                            <%}else{%><!--Semanas posteriores-->
                                <% for(int j = 1;j<=7;j++){%> <!--dias numericos-->

                                    <%if(cont < 29){%>

                                        <th><%= cont++ %></th>

                                    <%}%>     
                                <%}%>  
                            <%}%>
                        </tr>
                    <%}%>
                <%}    
                    
                
                 else{int cont = 1;%><!--31 dias--------------------------------------------------------------------------------------->
                    
                       <%for(int i = 1;i<=6;i++){%> <!--quantidade maxima de semanas em um mes-->

                        <tr>            
                            <% if(cont == 1){%> <!--primeira semana ( para cair  no dia certo)-->
                                <% for(int j = 1;j<=7;j++){%> <!--dias numericos-->

                                    <%if(j >= date){%>

                                        <%if(cont < 32){%>

                                            <th><%= cont++ %></th>

                                        <%}%>

                                    <%}else{%>

                                        <th></th>

                                    <%}%>

                                <%}%>

                            <%}else{%><!--Semanas posteriores-->
                                <% for(int j = 1;j<=7;j++){%> <!--dias numericos-->

                                    <%if(cont < 32){%>

                                        <th><%= cont++ %></th>

                                    <%}%>     
                                <%}%>  
                            <%}%>
                        </tr>
                    <%}%>
                <%}%>                
                    
                    
                    
                    
                    
                            
                
                </table>    

                <form action="calendaio.jsp">
                    
                    <div>
                        <select name="m">
                            <option value="0" selected disabled>Mês</option>
                            <option value="1">Janeiro</option>
                            <option value="2">Fevereiro</option>
                            <option value="3">Março</option>
                            <option value="4">Abril</option>
                            <option value="5">Maio</option>
                            <option value="6">Junho</option>
                            <option value="7">Julho</option>
                            <option value="8">Agosto</option>
                            <option value="9">Setembro</option>
                            <option value="10">Outubro</option>
                            <option value="11">Novembro</option>
                            <option value="12">Dezembro</option>
                        </select>
                        <input type="number" placeholder="yyyy" class="fields" min="1" value="<%= year %>" name="y"/>
                        <input type="submit" value="consultar" id="btn-calendar"/>
                    </div>
                    
                    <table>
                        <tr><th colspan="3">Dia da semana que inicia: <%= date %>º</th></tr>
                        <tr><th>Mês: <%= month+1%></th><th>Ano: <%= year %></th></tr>
                        
                       
                        
                    </table>
                    
                    
                    
                </form>
            </div>
        </article>
        
        
        <footer>
            <p><b>Nome:</b> Erick Goes Sampaio</p>
            <p><b>RA:</b>1290482012044</p>
        </footer>
    </body>
</html>

