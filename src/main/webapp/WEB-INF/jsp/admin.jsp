<%@ page contentType="text/html; charset=ISO-8859-1" language="java" pageEncoding="UTF-8" import="java.sql.*" errorPage="" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>DW-Administração</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <%-- aqui, chama o ficheiro jsp que contem os comandos para acessar os CSS e JQuery--%>     
        <%@include file="/WEB-INF/jsp/common/libs.jsp" %> 
        <%--<script type="text/javascript" src="/resources/js/jquery-1.9.1.min.js"></script>--%>

    </head>

    <body>
        <%--Inicio da barra horizontal preta do top da pagina--%>
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div> <%--/.container --%>
            </div> <%--/.nav-inner --%>
        </div> <%--/.navbar navbar-inverse navbar-fixed-top --%>

        <div class="container"><%--1º container --%>  
            <%-- my_page-header é um estilo definido em estradas.css --%>
            <div class="page-header" style="border-bottom: 1px #C9CAC1 solid">
                <%--Divisão em blocos--%>
                <div class="row"> 
                    <%--inicio bloco contem o logo e nome da empresa EP--%>

                    <div class="span12" > 
                        <h3 style="color:#0072BB;"align="left">DW - Gestão da Página Inicial</h3>
                    </div>
                    <%--fim bloco contem o logo e nome da empresa EP--%>

                </div> <%--row --%>

            </div> <%--my_page-header--%>

        </div>  <%--1º container --%>  

        <div class="container"><%-- 2º container --%>  

            <div class="row">
                <%--inicio 1º bloco de opção--%>
                <div class="span8 offset4" >
                    <ul class="thumbnails">
                        <li>
                            <%--<a href="/" class="thumbnail">--%>
                            <a href="<c:url value="/" />" class="thumbnail">
                                <img src="<c:url value="/resources/img/home.png"/> " alt="Home" title="Home">                              
                                <%--<img src="/resources/img/home.png" alt="Home" title="HomeDW">--%>
                            </a>
                            <h5 style="text-align:center;">HomeDW</h5>     
                        </li>
                        <li >
                           <%-- <a href="/admin/listMenu.html" class="thumbnail">--%>
                            <a href="<c:url value="/admin/listMenu" />" class="thumbnail">
                                <img src="<c:url value="/resources/img/menu.png"/> " alt="Menu" title="Menu">   
                                <%--<img src="/resources/img/menu.png" alt="Menu" title="Menu">--%>
                            </a>
                            <h5 style="text-align:center;">Menu</h5>
                        </li>
                        <li >
                            <%--<a href="/admin/listNoticia.html" class="thumbnail">--%>
                            <a href="<c:url value="/admin/listNoticia" />" class="thumbnail">
                                <img src="<c:url value="/resources/img/news.png"/> " alt="Noticias" title="Noticias">   
                                <%--<img src="/resources/img/news.png" alt="Noticias" title="Noticias">--%>
                            </a>
                            <h5 style="text-align:center;">Noticias</h5>
                        </li>
                    </ul>
                </div>
                <%--fim 1º bloco de opção--%>


            </div><%--row--%>
        </div><%--2º container --%>  
        <%-- Le javascript
       ================================================== --%>
        <%-- Placed at the end of the document so the pages load faster 
        <script src="/resources/js/jquery.js"></script>--%>
        <script src="/resources/js/bootstrap.min.js"></script>
        
    </body>
</html>