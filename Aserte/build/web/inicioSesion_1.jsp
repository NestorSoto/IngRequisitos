<%-- 
    Document   : inicioSesion
    Created on : 05-sep-2020, 14:43:43
    Author     : User
--%>

<%@page import="view.Usuario"%>
<%@page import="cad.UsuarioCad"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Aserté | Inicio Sesion</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity= "sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous"/>
        <link href="css/estilos.css" rel="stylesheet" type="txt/css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/7d4952ef47.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light"><%-- cambiar ligth por otro color--%>
            <a class="navbar-brand" href="#">
                <img src="img/Logo.png" width="150" height="40"/>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="Controlador?accion=home">Inicio <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Ofertas</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="Controlador?accion=home">Seguir comprando</a>
                    </li>
                </ul>

                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>
                <ul class="navbar-nav" >
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Cuenta
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="Usuarios.php">Iniciar Sesion</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">${user}</a>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="container col-4 margin-1">
            <h3> texto</h3>
            <p>
                tvbjnkfghnjkml,cgvhnkml,ñ.
            </p>
        </div>
        <%
             String nombre, contra;
             Usuario cliente;
             HttpSession sesion = request.getSession();
            if (request.getParameter("btnIngresar") != null) {
                nombre = request.getParameter("campoUsuario");
                contra = request.getParameter("campoContrasenia");
                if(UsuarioCad.usuarioExiste(nombre, contra)){
                    cliente = UsuarioCad.obtenerUsuario(nombre);
                    sesion.setAttribute("user", cliente.getUsuario());
                    response.sendRedirect("index.jsp");
                }else{
                    out.print(" el usuario no existe");
                }
            }else{
                
            }   
            
        %>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html>
