<%@ page contentType="text/html; charset=ISO-8859-1" language="java" pageEncoding="UTF-8" import="java.sql.*" errorPage="" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Data Warehouse, Estradas de Portugal, S.A.</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <%-- aqui, chama o ficheiro jsp que contem os comandos para acessar os CSS e JQuery--%>     
        <%@include file="/WEB-INF/jsp/common/libs.jsp" %> 
        
  
       <%--Este conjunto de código pertencem a caixa de noticias, plugin Jquery "fancybox"--%> 
       <script type="text/javascript">
           $(document).ready(function() {
               
               $('.fancybox').fancybox();
               
           });
       </script>
       
       <style type="text/css">
		.fancybox-custom .fancybox-skin {
			box-shadow: 0 0 30px #222;
		}

	</style>
        
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
                     <%--Define os botões na barra horizontal do top da pagina--%>
                    <div class="nav-collapse collapse">
                        <ul class="nav">
                            <li><a href="#contact" id="contatos">Contatos</a></li>
                            <li class="dropdown">
                                <a href="#" data-toggle="dropdown" id="diversos">Diversos</a>
                        </ul>
                         <%--Define os campos para user e passwor com botão--%>
                        <form class="navbar-form pull-right">
                            <input class="span2" type="text" placeholder="Utilizador">
                            <input class="span2" type="password" placeholder="Password">
                            <button type="submit" class="btn">Login</button>
                        </form>
                    </div> <%--/.nav-collapse --%>
                </div> <%--/.container --%>
            </div> <%--/.nav-inner --%>
        </div> <%--/.navbar navbar-inverse navbar-fixed-top --%>

        <div class="container">
             <%-- my_page-header é um estilo definido em estradas.css --%>
            <div class="my_page-header">
                 <%--Divisão em blocos--%>
                <div class="row"> 
                     <%--inicio bloco contem o logo e nome da empresa EP--%>
                    <div class="span2"> 
                        <img src="/resources/img/estradasdeportugalkt8.png" alt="">
                    </div>
                    <div class="span10" > 
                        <h2 style="color:#66676B;">Data Warehouse EP</h2>
                    </div>
                    <%--fim bloco contem o logo e nome da empresa EP--%>

                     <%--inicio bloco contem a barra de menu estilo nav-tab--%>
                    <div class="span12" style="margin-top:20px;">
                        <div class="tabbable tabs"> 
                             <%--my_nav-tabs é um estido definido em estradas.css--%>
                            <ul class="nav my_nav-tabs" >
                                <%--menus fixos--%>
                                <li class="active"><a href="#DW" data-toggle="tab">DW</a></li>
                                <li><a href="#SCRAP" data-toggle="tab">SCRAP</a></li>
                                
                                 <%--menus dinamicos--%>
                                <c:forEach items="${menuList}" var="menu">
                                
                                    <li><a href="#${menu.id_menu}" data-toggle="tab">${menu.item_menu}</a></li>
                                
                                </c:forEach>
                            </ul>

                            <div class="tab-content">
                                 <%--Caixa que surgirão apos o item de menu ser seleccionado--%>
                                <div class="tab-pane fade in active" id="DW" >
                                    <h4 style="color:#0072BB">Data Warehouse</h4>
                                    <p>O Data Warehouse das Estradas de Portugal, S.A. pretende ser uma plataforma que centraliza, por área, dados operacionais. Aplicando as melhores práticas conhecidas na indústria, recolhe, valida, uniformiza, agrega e disponibiliza informação sob vários formatos. O produto final será informação estratégica de qualidade.</p>
                                    <p><a href="#" class="btn btn-success btn-small" style="color:#fff">Saber mais &raquo;</a></p>
                                </div>
                              
                                <div class="tab-pane fade" id="SCRAP">              
                                     <%--Inicio da tabela com os dados para serem acessados--%>
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th>Dashbords</th>
                                                <th>Relatorios</th>
                                                <th>Mais</th>
                                                <th>Mais</th>
                                                <th>Mais</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td><a href="#">links</a></td>
                                                <td><a href="#">reports</a></td>
                                                <td><a href="#">links</a></td>
                                                <td><a href="#">links</a></td>
                                                <td><a href="#">links</a></td>
                                            </tr>
                                            <tr>
                                                <td><a href="#">links</a></td>
                                                <td><a href="#">reports</a></td>
                                                <td><a href="#">links</a></td>
                                                <td><a href="#">links</a></td>
                                                <td><a href="#">links</a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                     <%--Fim da tabela com os dados para serem acessados--%>
                                </div>

                              
                              <%--Inicio da caixa de informações dos botões--%>
                                <c:forEach items="${menuList}" var="menu">
                                    <div class="tab-pane fade" id="${menu.id_menu}">
                                        <h4 style="color:#0072BB">${menu.item_menu}</h4>
                                        <p>${menu.descricao_menu}.</p>
                                        <p><a href="${menu.url}" class="btn btn-success btn-small" style="color:#fff">Saber mais &raquo;</a></p>
                                    </div>           
                                </c:forEach>

                            </div> <%--tab-content --%>
                      
                        </div> <%--tabbable tabs--%>
                    </div> <%--span12 --%>
                    <%--fim bloco contem a barra de menu estilo nav-tab--%>

                </div> <%--row --%>
            </div> <%--my_page-header--%>
            
             <%--Inicio do Bloco de Imagens --%>
            <div class="row-fluid">
                <div class="span6">
                    <h4>DW - RECURSOS</h4>
                    
                    <ul class="thumbnails">

                        <li >
                            <a href="#" class="thumbnail">
                                <img src="/resources/img/dashbord.png" alt="Dashbord" title="Dashbord">
                            </a>
                            <h5 style="text-align:center;">Dashbord</h5>     
                        </li>

                        <li >
                            <a href="#" class="thumbnail">
                                <img src="/resources/img/relatorio.png" alt="Relatorios" title="Relatorios">
                            </a>
                            <h5 style="text-align:center;">Relatorios</h5>
                        </li>

                        <li >
                            <a href="#" class="thumbnail">
                                <img src="/resources/img/contactos.png" alt="Contacto" title="Contactos">
                            </a>
                            <h5 style="text-align:center;">Contactos</h5>
                        </li>

                        <li >
                            <a href="#" class="thumbnail">
                                <img src="/resources/img/sugestao.png" alt="Susgestões" title="Sugestões">
                            </a>
                            <h5 style="text-align:center;">Sugestões</h5>
                        </li>

                        <li >
                            <a href="#" class="thumbnail">
                                <img src="/resources/img/esclarecimento_2.png" alt="Esclarecimentos" title="Esclarecimentos">
                            </a>
                            <h5 style="text-align:center;">Informações</h5>
                        </li>

                    </ul>
                </div>
                 <%--Fim do Bloco de Imagens --%>

                 <%--Inicio do Bloco de Noticias--%>
                <div class="span6">
                    <h4>DW - NOTICIAS</h4>
                    <table class="table table-striped table-bordered">
                        <tbody>                      
                            <tr>
                                <td><a class="fancybox" href="#in" title="Loreminnn ipsum dolor sit amet">Noticias, sobre Oprtunidades de Negocio EP</a></td>
                            </tr>
                        </tbody>
                    </table>
                   
                </div>
            </div>
             <%--Inicio do Bloco de Noticias--%>
            <hr>

            
            
            <footer>
                <p> Copyright &copy; 2013 Estradas de Portugal, S.A.</p>
            </footer>

        </div>  <%-- /container --%>
        
          <%--Informações da Caixa de noticias--%>
        <div id="in" style="width:400px;display: none;">
             
            <h3>Noticias, sobre Oprtunidades de Negocio EP</h3>
                             
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis mi eu elit tempor facilisis id et neque. Nulla sit amet sem sapien. Vestibulum imperdiet porta ante ac ornare. Nulla et lorem eu nibh adipiscing ultricies nec at lacus. Cras laoreet ultricies sem, at blandit mi eleifend aliquam. Nunc enim ipsum, vehicula non pretium varius, cursus ac tortor. Vivamus fringilla congue laoreet. Quisque ultrices sodales orci, quis rhoncus justo auctor in. Phasellus dui eros, bibendum eu feugiat ornare, faucibus eu mi. Nunc aliquet tempus sem, id aliquam diam varius ac. Maecenas nisl nunc, molestie vitae eleifend vel, iaculis sed magna. Aenean tempus lacus vitae orci posuere porttitor eget non felis. Donec lectus elit, aliquam nec eleifend sit amet, vestibulum sed nunc.</p>
        </div>
   
        

         <%-- É importante que esteja para a animação do menu
        ================================================== --%>
         <%-- Placed at the end of the document so the pages load faster--%>
        <script src="/resources/js/bootstrap.min.js"></script>

         <%--Esta funcão determina que, ao passar o mouse por cima da TAB, o conteudo muda, se apagar, volta ao normal ou seja, tem que se clicar para alterar o conteudo--%>
        <script type="text/javascript">

            $(function() {

                $('.my_nav-tabs > li ').hover( function(){
                    if($(this).hasClass('hoverblock'))
                        return;
                    else
                        $(this).find('a').tab('show');
                });


                $('.my_nav-tabs > li').find('a').click( function(){
                    $(this).parent()
                    .siblings().addClass('hoverblock');
                });

            });

            //Esta função define a altura fixa da caixa de conteudos, ou seja, a altura da caixa é fixo ainda que haja mais elementos, neste caso aparece ao lado uma barra de Scroll.

            $(function() {

                var tab_height = $('.tab-content').css('height'); 
                $('.tab-content').css('height',tab_height);

            });


        </script>     
      
    </body>
    
</html>