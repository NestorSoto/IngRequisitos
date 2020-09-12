<%-- 
    Document   : registro
    Created on : 05-sep-2020, 15:17:35
    Author     : User
--%>

<%@page import="cad.UsuarioCad"%>
<%@page import="view.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Aserté | Registro</title>
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
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="container col-4 margin-1">


            <form>
                <h3>Registro Empresa</h3>
                <hr>
                <div class="form-group">
                    <label for="inputNombreEmpresa"><i class="fas fa-building"></i>Nombre de Empresa</label>
                    <input type="text" class="form-control" name="nombreEmpresa" id="inputNombreEmpresa" placeholder="Nombre de empresa">
                </div>
                <div class="form-group">
                    <label for="inputTitular"><i class="fas fa-user-tie"></i>Titular de Empresa</label>
                    <input type="text" class="form-control" name="titularE" id="inputTitular" placeholder="Titular de empresa">
                </div>
                <div class="form-group">
                    <label for="inputDireccion"><i class="fas fa-map-marked-alt"></i>Direccion</label>
                    <input type="text" class="form-control" name="dir" id="inputAddress" placeholder="DIRECCION">
                </div>
                <div class="form-group">
                    <label for="inputRuc">RUC</label>
                    <input type="text" class="form-control" name="Ruc" id="inputRuc" placeholder="RUC">
                </div>
                <div class="form-group">
                    <label for="inputRubro"><i class="fas fa-layer-group"></i>Rubro</label>
                    <input type="text" class="form-control" name="rubro1" id="inputNombreRubro" placeholder="Rubro">
                </div>

                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputEmail"><i class="fas fa-envelope"></i>Email</label>
                        <input type="email"class="form-control" name="correo" id="inputEmail4">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputPassword"><i class="fas fa-lock"></i>Password</label>
                        <input type="password" class="form-control" name="contra" id="inputPassword4">
                    </div>
                </div>



                <div class="form-group form-check">
                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                    <label class="form-check-label" for="exampleCheck1">Acepto los<a href="terminos.jsp">Terminos y condiciones</a></label>
                </div>



                <input type="submit" name="btnRegistrar" class="btn btn-success" value="Registrarse" id="button">
                <input type="submit" name="btn" class="btn btn-danger" value="Soy Persona naltural" id="button">
            </form>


        </div>
        <%
            String nombreEmpresa, titular, direccion, rubro, contra, email;
            int ruc;
            if (request.getParameter("btnRegistrar") != null) {
                nombreEmpresa = request.getParameter("nombreEmpresa");
                titular = request.getParameter("titularE");
                direccion = request.getParameter("dir");               
                rubro = request.getParameter("rubro1");
                email = request.getParameter("correo");
                contra = request.getParameter("contra");
                if (!nombreEmpresa.equals("") && !titular.equals("") && !direccion.equals("") &&!request.getParameter("Ruc").equals("")&&!rubro.equals("")&&!email.equals("")&&!contra.equals("")) {
                     ruc = Integer.parseInt(request.getParameter("Ruc"));
                    Usuario us = new Usuario(1, nombreEmpresa, email, titular, contra, direccion, ruc, rubro, 1);
                    if (UsuarioCad.Registrar(us)) {
                        HttpSession sesion = request.getSession();
                        sesion.setAttribute("user", us.getUsuario());

                        sesion.setAttribute("userEmail", email);

                        response.sendRedirect("index.jsp");
                    }
                }

            } //else {
%>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html>
