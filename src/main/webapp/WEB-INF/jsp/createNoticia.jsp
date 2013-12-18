<%@ page contentType="text/html; charset=ISO-8859-1" language="java" pageEncoding="UTF-8" import="java.sql.*" errorPage="" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>DW-Administração</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <%-- aqui, chama o ficheiro jsp que contem os comandos para acessar os CSS e JQuery--%>     
        <%@include file="/WEB-INF/jsp/common/libs.jsp" %> 

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
                    <%--inicio bloco contem o titulo e botões de acesso as paginas--%>
                    <div class="span9" > 
                        <h3 style="color:#0072BB;"align="left">DW - Nova Noticia</h3>
                    </div>
                    <div class="span1" >   
                      <%--  <a href="/" class="thumbnail">--%>
                     <a href="<c:url value="/" />" class="thumbnail">
                            <img src="<c:url value="/resources/img/home_peq.png"/> " alt="Home" title="Home">   
                            <%--<img src="/resources/img/home_peq.png" alt="Home" title="HomeDW">--%>
                        </a>
                    </div>
                    <div class="span1" >   
                        <%--<a href="/admin/listNoticia" class="thumbnail">--%>                    
                        <a href="<c:url value="/admin/listNoticia" />" class="thumbnail">
                            <img src="<c:url value="/resources/img/list.png"/> " alt="list" title="Listar Noticias">  
                           <%-- <img src="/resources/img/list.png" alt="list" title="Listar Noticias">--%>
                        </a>
                    </div>
                    <div class="span1" >   
                       <%-- <a href="/admin" class="thumbnail">--%>
                        <a href="<c:url value="/admin" />" class="thumbnail">                      
                            <img src="<c:url value="/resources/img/admin.png"/> " alt="Admin" title="Administração"> 
                            <%--<img src="/resources/img/admin.png" alt="Admin" title="Administração">--%>
                        </a>
                    </div>
                    <%--fim bloco contem o titulo e botões de acesso as paginas--%>

                </div> <%--row --%>

            </div> <%--page-header--%>

        </div>  <%--1º container --%>  

        <div class="container"><%-- 2º container --%>  

            <%--<form:form action="/homedw/admin/listNoticia.html" method="POST" commandName="noticia" id="contact-form">--%>
            <form:form action="/admin/listNoticia" method="POST" commandName="noticia" id="contact-form">
                <table width=80% align="right">

                    <tr>
                        <td width="150px" class="control-group"><strong for="titulo_noticia"/>Titulo da Noticia</td>
                        <td class="control-group"><form:input path="titulo_noticia" class="input-xxlarge"  style="height: 30px;" autofocus="autofocus" name="titulo_noticia" id="titulo_noticia"/></td>
                    </tr>

                    <tr>
                        <td valign=top class="control-group"><strong for="descricao_noticia"/>Descrição</td>
                        <td class="control-group"><form:textarea path="descricao_noticia" class="input-xxlarge" rows="9" name="descricao_noticia" id="descricao_noticia"/></td>
                    </tr>

                  
                    <tr>
                        <td>
                        <td>
                            <!--parte refernte aos botões -->                
                            <button type="submit" name="action" class="btn btn-primary" value="add" id="add">Guardar</button>  
                            <button type="reset" name="action" class="btn btn-default" value="cancel">Cancelar</button>  
                        </td>
                    </tr>
                </table>
            </form:form>
        </div><%--2º container --%>  

    </body>

</html>