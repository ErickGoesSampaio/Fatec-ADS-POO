<%-- 
    Document   : index
    Created on : 13 de set de 2021, 15:40:18
    Author     : Erick
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora de Amortização em Prince</title>
        <link rel="icon" href="res/images/LogoTransp.png">
        <!-- Bootstrap -->
        <link href="res/styles/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="res/styles/style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>

        <%@include file="WEB-INF/jspf/header.jspf" %>

        <section id="sobre">
            <div class="container-fluid" style="padding: 8% 20%; ">
                <div class="heading-title text-center" >
                    <h1 class="text-uppercase" >Sistema de amortização em prince</h1>
                    <hr class="bottom-line3">
                </div><br><br><br>
                <div class="w3-card-4" style="height: 220px; padding: 20px">
                    <div style="padding: 2px">
                        <a href="tabela-price.jsp"><img style="width: 150px; height: 150px;" src="res/images/desenho.png" alt=""/></a>
                        <h2 style="margin: -120px 0px 0px 200px;">Tabela Price:</h2><br>
                        <p style="margin: 0px 0px 0px 220px; font-size: 15px; padding-bottom: 10px;">A Tabela Price foi desenvolvida para ser uma solução no cálculo de pensões e aposentadoria, porém, com o passar do tempo se tornou um sistema de amortização muito utilizado pelos financiamentos em geral. </p>
                    </div>
                </div>
            </div>
        </section>
        <section id="equipe1">
            <div class="container" > 
                <div class="row" >
                    <div class="heading-title text-center" >
                        <h3 class="text-uppercase" style="font-size: 30px;">Desenvolvedor</h3>
                        <hr class="bottom-line4">
                    </div>

                    <div class="col-md-4 col-sm-4 col-md-offset-1" style="margin: center">
                        <div class="team-member">
                            <div class="team-img">
                                <img  src="res/images/member2.jpg"  alt="team member" class="img-responsive">
                            </div>
                            <div class="team-hover">
                                <div class="desk">
                                    <h4>Front-end & Back-end</h4><br><br>
                                    <p>Foi responsável pela criação do projeto.</p>
                                </div>
                                <div class="s-link">
                                    <a href="https://www.linkedin.com/in/erick-goes-sampaio/" target="_blank"><img class="icons lk" src="res/images/linkedin.png" alt=""/></a>
                                    <a href="https://github.com/ErickGoesSampaio" target="_blank"><img class="icons" src="res/images/github.png" alt=""/></a>
                                </div>
                            </div>
                        </div>
                        <div class="team-title">
                            <h5>Erick Goes</h5>
                            <span>RA: 1290482072044</span>
                            <hr class="bottom-line5"><br>
                        </div>
                    </div>
                </div>

            </div>
        </section>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
        <!-- jQuery (necessary for Bootstrap"s JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="res/scripts/jquery-3.2.1.min.js" type="text/javascript"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="res/scripts/bootstrap.min.js" type="text/javascript"></script>
        <script>

            var $doc = $("html, body");
            $("#ateam").click(function () {
                $doc.animate({
                    scrollTop: $($.attr(this, "href")).offset().top
                }, 600);
                document.getElementById("home").classList.remove("active");
                document.getElementById("about").classList.remove("active");
                document.getElementById("team").classList.add("active");

                return false;
            });
            $("#ahome").click(function () {
                $doc.animate({
                    scrollTop: $($.attr(this, "href")).offset().top
                }, 600);
                document.getElementById("home").classList.add("active");
                document.getElementById("about").classList.remove("active");
                document.getElementById("team").classList.remove("active");
                return false;
            });
            $("#aabout").click(function () {
                $doc.animate({
                    scrollTop: $($.attr(this, "href")).offset().top
                }, 600);
                document.getElementById("home").classList.remove("active");
                document.getElementById("about").classList.add("active");
                document.getElementById("team").classList.remove("active");
                return false;

            });
            $("#adrop1").click(function () {
                document.getElementById("home").classList.remove("active");
                document.getElementById("about").classList.remove("active");
                document.getElementById("team").classList.remove("active");

            });
        </script>
    </body>
</html>
