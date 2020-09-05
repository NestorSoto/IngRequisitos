
<%@page import="JavaBeans.Usuario"%>
<%@page import="cad.UsuarioCad"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title> Viva Salud |Cuenta</title>
        <%@include file="WEB-INF/css.jsp"%>      
     
    </head>


    <body>

        <div class="header_top"><!--header_top-->
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="contactinfo">
                            <ul class="nav nav-pills">
                                <li><a href="#"><i class="fa fa-phone"></i> +51 903 087 821</a></li>
                                <li><a href="#"><i class="fa fa-envelope"></i> info@vivasalud.com</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="social-icons pull-right">
                            <ul class="nav navbar-nav">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div><!--/header_top-->
        <hr>
        <div id="cabezera">
            <a href="index.jsp"><img src="images/home/logo3.jpg" alt="" /></a>
            <input name="q"
                   id="input-mobile-search"
                   type="search"
                   placeholder="Busca productos"
                   >
            <button id="btSearch"><img src="https://img.icons8.com/ios-filled/2x/google-web-search.png" id="b1"></button>
        </div>
        <div id="contenedor"> 
            <div id="opc">


                <p>pedidos
                <div><img  src="https://img.icons8.com/pastel-glyph/2x/shopping-cart--v2.png" id="ico1"></div>
                <p id="mensaje"> No tienes Pedidos realizados
                <hr>
                <p><a href="index.jsp">Realizar un pedido</a>


            </div>
            <div id="request">
                <p>

                <p><a href="Cart"><i class="fa fa-shopping-cart"></i> Mis Pedidos</a>  
                <p><a href="#" id="btn-rese" class="btn-rese">Mis Reseñas</a>
                <p><a href="#" id="btn-rese2" class="btn-rese2">Mis cupones</a>
                <hr>
                <p><a href="#" id="btn-datos" class="btn-datos">Mis datos personales</a>  
                <p><a href="#">Mis tarjetas</a>  
                <p><a href="#">Mis direcciones</a>
                <p><a href="#">facturacion</a>
                <hr>
                <a href="#">Cerrar sesion</a>
            </div><p>

        </div>
        <div class="overlay2" id="overlay2">
            <div class="rese2" id="rese2">
                <a href="#" id="btn-cerrar-rese2" class="btn-cerrar-rese2">x</a>
                <h3>Cupones no disponibles</h3>
                <p><img src="data:image/png;base64,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"></p>
            </div>
        </div>
        <div class="overlay3" id="overlay3">

            <div class="datos" id="datos">
                <a href="#" id="btn-cerrar-datos" class="btn-cerrar-datos">x</a>
                <h3>Mis datos personales</h3>
                <form action="">
                    <p>Nombre
                        <input type="text" placeholder="nombre">
                    <p>Apellidos
                        <input type="text" placeholder="Apellidos">
                    <p>sexo
                        <input type="radio" name="sexo" value="femenino"/>Femenino
                        <input type="radio" name="sexo" value="Masculino" />Masculino
                    <p>fecha de nacimiento
                        <input type="text" name="Año" value="Año" />
                        <input type="text" name="mes" value="Mes" />
                        <input type="text" name="Dia" value="Dia" />
                    <p>Teléfono
                        <input type="text" name="telefono" value="" />
                    <p>Email
                        <input type="text" name="Email" value="" />
                        <input type="submit" value="Cambiar e-mail" />
                        <input type="submit" value="Guardar Cambios" />
                    <p>Contraseña actual
                        <input type="text" name="pasword" value="***************" disabled="disabled" />
                        <input type="submit" value="Cambiar tu contraseña" name="change-pasword" />
                </form>


            </div>

        </div>
        <div class="overlay" id="overlay">
            <div class="rese" id="rese">
                <a href="#" id="btn-cerrar-rese" class="btn-cerrar-rese">x</a>
                <h3>Introduzca su reseña</h3>
                <form action="">
                    <div class="contenedor-inputs">
                        <input type="text" placeholder="Escriba aquí">
                    </div>
                    <input type="submit" class="btn-submit" value="Enviar">
                </form>
            </div>
        </div>
        

        <%@include file="WEB-INF/footer.jsp" %>
        <%@include file="../WEB-INF/js.jsp" %>
    </body>

</html>
