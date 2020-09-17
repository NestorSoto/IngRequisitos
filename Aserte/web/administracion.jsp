
<%@page import="cad.UsuarioCad"%>
<%@page import="view.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Aserte |Cuenta</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity= "sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous"/>
        <link href="css/estilos.css" rel="stylesheet" type="txt/css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/7d4952ef47.js" crossorigin="anonymous"></script>

    </head>
    <body>
        <%
            Usuario u = UsuarioCad.obtenerUsuario(session.getAttribute("user").toString());

        %>

        ${u.getUsuario()}

        <nav class="navbar navbar-expand-lg navbar-light bg-light colors" >
            <div class="container">
                <a class="navbar-brand" href="Controlador?accion=home">
                    <img src="img/Logo.png" width="150" height="40"/>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">

                    </ul>

                    <ul class="navbar-nav">

                        <li class="nav-item active">
                            <a class="dropdown-item" ><i class="fas fa-user"></i> ${user}</a>
                        </li>


                    </ul>

                </div>
            </div>
        </nav>
        <div class="container">
            <div class="row">

                <div class="col-4">

                    <button type="button" class="btn  btn-light "><i class="fas fa-user-cog"></i>Mis datos personales</button><p>
                        <a href="product.jsp"type="button"  class="btn  btn-light "><i class="fas fa-map-marked-alt"></i> Añadir productos a la web</a><p>
                    <hr>
                    <a href="out.jsp" class="btn  btn-light "><i class="fas fa-sign-out-alt"></i> Salir</button><p>

                            </div>
                        <div class="form">
                            <p class="font-weight-bold text-uppercase"><h4>Informacion de cuenta</p>
                                <hr>
                                <form>

                                    <hr>
                                    <div class="form-group">
                                        <label for="inputNombreEmpresa"><i class="fas fa-building"></i>Nombre de Empresa</label>
                                        <input type="text" class="form-control" name="nombreEmpresa" id="inputNombreEmpresa" value="<%out.print(u.getNombreEmpresa());%>" disabled>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputTitular"><i class="fas fa-user-tie"></i>Titular de Empresa</label>
                                        <input type="text" class="form-control" name="titularE" id="inputTitular" value="<%out.print(u.getUsuario());%>" disabled>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputDireccion"><i class="fas fa-map-marked-alt"></i>Direccion</label>
                                        <input type="text" class="form-control" name="dir" id="inputAddress" value="<%out.print(u.getDireccion());%>" disabled>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputRuc">RUC</label>
                                        <input type="text" class="form-control" name="Ruc" id="inputRuc" value="<%out.print(u.getRUC());%>" disabled>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputRubro"><i class="fas fa-layer-group"></i>Rubro</label>
                                        <input type="text" class="form-control" name="rubro1" id="inputNombreRubro" value="<%out.print(u.getRubro());%>" disabled>
                                    </div>

                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="inputEmail"><i class="fas fa-envelope"></i>Email</label>
                                            <input type="email"class="form-control" name="correo" value="<%out.print(u.getCorreo());%>" disabled>
                                        </div>

                                    </div>




                                </form>
                        </div>
                </div>



                <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>

                </body>
                </html>
