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
        <script type="text/javascript" src="/resources/js/jquery-latest.js"></script>
        <script type="text/javascript" src="/resources/js/jquery.tablesorter.js"></script>
        
        <script type="text/javascript">
            
            $(document).ready(function() 
            { 
                $("#myTable").tablesorter(); 
            } 
        ); 
            
        </script>

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
                        <h3 style="color:#0072BB;"align="left">DW - Gestão das Noticias</h3>
                    </div>
                    <div class="span1" >   
                        <a href="/homedw.html" class="thumbnail">
                            <img src="/resources/img/home_peq.png" alt="Home" title="HomeDW">
                        </a>
                    </div>
                    <div class="span1" >   
                        <a href="/homedw/admin/novaNoticia.html" class="thumbnail">
                            <img src="/resources/img/add.png" alt="add" title="Novo Item">
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

        <div class="table-responsive"><%-- 2º container --%>  

            <table id="myTable" class="tablesorter" align="center" style="width: 65%">
                
                <thead>
                <tr>

                    <th><strong>Id</strong></th>
                    <th><strong>Titulo da noticia</strong></th>
                    <th><strong>Data</strong></td>
                    <th><strong>Ação</strong></th>

                </tr>
                </thead>
                <tbody>
                <!--parte refernte a listagem-->
                <c:forEach items="${noticiaList}" var="noticia">
                    <%--criamos uma variavel para conter o caminho que pretendemos--%>
                    <c:url var="url" value="/homedw/admin/editNoticia/${noticia.id_noticia}" />   
                    <c:url var="url_2" value="/homedw/admin/deleteNoticia/${noticia.id_noticia}" />   
                    
                    <tr>

                        <%--url refere-se ao conteudo do id receitas, é uma variavel antes da listagem --%>
                        <form:form action="${url}/edit" method="GET">

                            <%--aqui, definimos que será mostrado o id e o titulo da receita, mas apenas o titulo é clicavel --%>
                            <td>${noticia.id_noticia}</td>
                            <td><a href="<c:url value="${url}"/>/edit.html" title="Mostrar Noticia">${noticia.titulo_noticia}</a></td>
                            <td>${noticia.data_noticia}</td>
                        </form:form>

                        <%--url refere-se ao botão para eliminar receita --%>
                        <form:form action="${url_2}/delete" method="DELETE">

                            <%--aqui, definimos um botão "eliminar" para cada item do menu. --%>
                            <td><a href="<c:url value="${url_2}"/>/delete.html"><img src="../../resources/img/del.png" title="Apagar Noticia"/></a></td>
                        </form:form> 

                    </tr>
                   

                </c:forEach>
                     </tbody>
            </table>

        </div> <%-- 2º container --%>  
        
         <%--   
        <table id="myTable" class="tablesorter"> 
            <thead> 
                <tr> 
                    <th>Last Name</th> 
                    <th>First Name</th> 
                    <th>Email</th> 
                    <th>Due</th> 
                    <th>Web Site</th> 
                </tr> 
            </thead> 
            <tbody> 
                <tr> 
                    <td>Smith</td> 
                    <td>John</td> 
                    <td>jsmith@gmail.com</td> 
                    <td>$50.00</td> 
                    <td>http://www.jsmith.com</td> 
                </tr> 
                <tr> 
                    <td>Bach</td> 
                    <td>Frank</td> 
                    <td>fbach@yahoo.com</td> 
                    <td>$50.00</td> 
                    <td>http://www.frank.com</td> 
                </tr> 
                <tr> 
                    <td>Doe</td> 
                    <td>Jason</td> 
                    <td>jdoe@hotmail.com</td> 
                    <td>$100.00</td> 
                    <td>http://www.jdoe.com</td> 
                </tr> 
                <tr> 
                    <td>Conway</td> 
                    <td>Tim</td> 
                    <td>tconway@earthlink.net</td> 
                    <td>$50.00</td> 
                    <td>http://www.timconway.com</td> 
                </tr> 
            </tbody> 
        </table> 
        
        --%>  
        

        <%-- Le javascript
       ================================================== --%>
        <%-- Placed at the end of the document so the pages load faster 
        <script src="/resources/js/jquery.js"></script>--%>
        <script src="/resources/js/bootstrap.min.js"></script>

    </body>
</html>