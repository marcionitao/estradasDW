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
                    <%--inicio bloco contem o logo e nome da empresa EP--%>

                    <div class="span12" > 
                        <h2 style="color:#0072BB;"align="left">DW - Gestão dos Menus</h2>
                    </div>
                    <%--fim bloco contem o logo e nome da empresa EP--%>

                </div> <%--row --%>

            </div> <%--my_page-header--%>

        </div>  <%--1º container --%>  

        <div class="container"><%-- 2º container --%>  

            <form:form action="menu.do" method="POST" commandName="menu" id="form">
                <table width=80% align="right">
               
                <tr>
                    <td align="left"><strong/>Item</td>
                    <td><form:input path="item_menu" class="input-xlarge" id="item_menu"/></td>
                </tr>
                <tr>
                    <td valign=top align="left"><strong/>Descrição</td>
                    <td><form:textarea path="descricao_menu" class="input-xlarge" rows="7" id="descricao_menu"/></td>
                </tr>
                <tr>
                    <td align="left"><strong/>URL</td>
                    <td><form:input path="url" class="input-xlarge" id="url"/></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <!--parte refernte aos botões-->
                        <input type="submit" name="action" value="add" />
                        <input type="submit" name="action" value="edit" />
                        <input type="submit" name="action" value="delete" />
                        
                    </td>
                </tr>
            </table>
        </form:form>
             </div><%--2º container --%>  
           
        <br>
        <br>
        
        <table class="table-striped">
            <th>ID</th>
            <th>Item</th>
            <th>Descrição</th>
            <th>url</th>

            <!--parte refernte a listagem-->
            <c:forEach items="${menuList}" var="menu">
                <tr>
                    <td>${menu.id_menu}</td>
                    <td>${menu.item_menu}</td>
                    <td>${menu.descricao_menu}</td>
                    <td>${menu.url}</td>
                </tr>
            </c:forEach>
        </table>
            
       
        <%-- Le javascript
       ================================================== --%>
        <%-- Placed at the end of the document so the pages load faster --%>
        <script src="/resources/js/jquery.js"></script>
        <script src="/resources/js/bootstrap.min.js"></script>

    </body>
</html>