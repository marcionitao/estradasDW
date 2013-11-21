<%@ page contentType="text/html; charset=ISO-8859-1" language="java" pageEncoding="UTF-8" import="java.sql.*" errorPage="" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>DW-Admin, Menus</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <%-- aqui, chama o ficheiro jsp que contem os comandos para acessar os CSS e JQuery--%>     
        <%@include file="/WEB-INF/jsp/common/libs.jsp" %> 
        <script type="text/javascript" src="/resources/js/jquery-1.9.1.min.js"></script>

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
                        <h3 style="color:#0072BB;"align="left">DW - Novo item de Menu</h3>
                    </div>
                    <div class="span1" >   
                        <a href="/homedw.html" class="thumbnail">
                            <img src="/resources/img/home_peq.png" alt="Home" title="HomeDW">
                        </a>
                    </div>
                    <div class="span1" >   
                        <a href="/homedw/admin/listMenu.html" class="thumbnail">
                            <img src="/resources/img/list.png" alt="list" title="Listar Itens">
                        </a>
                    </div>
                    <div class="span1" >   
                        <a href="/homedw/admin.html" class="thumbnail">
                            <img src="/resources/img/admin.png" alt="Admin" title="Administração">
                        </a>
                    </div>
                    <%--fim bloco contem o titulo e botões de acesso as paginas--%>

                </div> <%--row --%>

            </div> <%--page-header--%>

        </div>  <%--1º container --%>  

        <div class="container"><%-- 2º container --%>  

            <form:form action="/homedw/admin/listMenu.html" method="POST" commandName="menu" id="form">
                <table width=80% align="right">

                    <tr>
                        <td width="120px"><strong/>Item</td>
                        <td><form:input path="item_menu" class="input-xxlarge"  style="height: 25px;" autofocus="autofocus" id="item_menu"/></td>
                    </tr>
                    <tr>
                        <td valign=top><strong/>Descrição</td>
                        <td><form:textarea path="descricao_menu" class="input-xxlarge" rows="5" id="descricao_menu"/></td>
                    </tr>
                    <tr>
                        <td><strong/>URL</td>
                        <td><form:input path="url" class="input-xxlarge" style="height: 25px;" id="url"/></td>
                    </tr>
                    <tr>
                        <td>
                        <td>
                            <!--parte refernte aos botões -->                
                            <button type="submit" name="action" class="btn btn-info" value="add" id="add">Guardar</button>  
                            <button type="reset" name="action" class="btn btn-success" value="cancel">Cancelar</button>  
                        </td>
                    </tr>
                </table>
            </form:form>
        </div><%--2º container --%>  


        <%-- Le javascript
       ================================================== --%>
        <%-- Placed at the end of the document so the pages load faster --%>
        <script src="/resources/js/jquery.js"></script>
        <script src="/resources/js/bootstrap.min.js"></script>

    </body>
</html>