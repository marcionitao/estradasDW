<%@ page contentType="text/html; charset=ISO-8859-1" language="java" pageEncoding="UTF-8" import="java.sql.*" errorPage="" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
                        <h3 style="color:#0072BB;"align="left">DW - Gestão dos Menus</h3>
                    </div>
                    <div class="span1" >   
                        <%--<a href="/" class="thumbnail">--%>                      
                        <a href="<c:url value="/" />" class="thumbnail">
                            <%--<img src="/resources/img/home_peq.png" alt="Home" title="HomeDW">--%>
                            <img src="<c:url value="/resources/img/home_peq.png"/> " alt="Home" title="Home">
                        </a>
                    </div>
                    <div class="span1" >   
                        <%--<a href="/admin/novoItem" class="thumbnail">--%>                    
                        <a href="<c:url value="/admin/novoItem" />" class="thumbnail">
                            <img src="<c:url value="/resources/img/add.png"/> " alt="add" title="Novo Item"> 
                            <%--<img src="/resources/img/add.png" alt="add" title="Novo Item">--%>
                        </a>
                    </div>
                    <div class="span1" >   
                        <%--<a href="/admin" class="thumbnail">--%>
                        <a href="<c:url value="/admin" />" class="thumbnail">   
                            <img src="<c:url value="/resources/img/admin.png"/> " alt="Admin" title="Administração"> 
                            <%--<img src="/resources/img/admin.png" alt="Admin" title="Administração">--%>
                        </a>
                    </div>
                    <%--fim bloco contem o titulo e botões de acesso as paginas--%>

                </div> <%--row --%>

            </div> <%--page-header--%>

        </div>  <%--1º container --%>  

        <div class="table-responsive"><%-- 2º container --%>  

            <table class="table table-bordered" align="center" style="width: 50%;">
                <tr class="info">

                    <td width="10px"><strong>Id</strong></td>
                    <td><strong>Item Menu</strong></td>
                    <td width="10px"><strong>Ação</strong></td>

                </tr>

                <!--parte refernte a listagem-->
                <c:forEach items="${menuList}" var="menu">
                    <%--criamos uma variavel para conter o caminho que pretendemos--%>
                    <%--<c:url var="url" value="/admin/editItem/${menu.id_menu}" />   --%>
                    <%--<c:url var="url_2" value="/admin/deleteItem/${menu.id_menu}" /> --%>

                    <tr class="warning">

                        <%--url refere-se ao conteudo do id receitas, é uma variavel antes da listagem --%>
                        <form:form action="/admin/editItem/${menu.id_menu}/edit" method="GET">

                            <%--aqui, definimos que será mostrado o id e o titulo da receita, mas apenas o titulo é clicavel --%>
                            <td>${menu.id_menu}</td>
                            <td><a href="<c:url value="/admin/editItem/${menu.id_menu}"/>/edit" title="Mostrar Itens">${menu.item_menu}</a></td>
                        </form:form>

                        <%--url refere-se ao botão para eliminar receita --%>
                        <form:form action="/admin/deleteItem/${menu.id_menu}/delete" method="DELETE">

                            <%--aqui, definimos um botão "eliminar" para cada item do menu. --%>
                            <%--<td><a href="<c:url value="${url_2}"/>/delete" id="del"><img src="../../resources/img/del.png" title="Apagar Item"/></a> </td>--%>
                            <td><a href="<c:url value="/admin/deleteItem/${menu.id_menu}"/>/delete" id="del"><img src="<c:url value="/resources/img/del.png"/> " title="Apagar Item"></a></td>
                        </form:form> 

                    </tr>

                </c:forEach>
            </table>

        </div> <%-- 2º container --%>  

        <%-- Le javascript
       ================================================== --%>
        <%-- Placed at the end of the document so the pages load faster 
        <script src="/resources/js/jquery.js"></script>--%>
        <script src="/resources/js/bootstrap.min.js"></script>

    </body>
    
     <%-- Script para confirmar se o item da lista é eliminado ou não--%>
        <script type="text/javascript">
        
            $(document).ready(function(){
            
                $("#del").click(function(){
                
                    return confirm("Tem a certeza de que deseja eliminar este item?");
                
                });
            
            });
        
        </script>

</html>