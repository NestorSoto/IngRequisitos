<%-- 
    Document   : inicioSesion
    Created on : 05-sep-2020, 14:43:43
    Author     : User
--%>

<%@page import="com.modelo.ProductoDAO"%>
<%@page import="com.modelo.Producto"%>
<%@page import="view.Usuario"%>
<%@page import="cad.UsuarioCad"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Aserté | Add</title>
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

                <ul class="navbar-nav" >
                    <li class="nav-item">
                        <a class="nav-link" href="administracion.jsp"><i class="fas fa-user-edit"></i> ${user}</a>
                    </li>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="container col-4 margin-1">
            <form>
                <h3>Añadir Productos</h3>
                <hr>
                <div class="form-group">

                    <label for="exampleInputEmail1">Nombre de producto</label>
                    <input type="text"  name="campoNombre" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                    <small id="emailHelp" class="form-text text-muted"></small>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Foto(URL)</label>
                    <input type="text"  name="campoFoto" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                    <small id="emailHelp" class="form-text text-muted"></small>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Descripcion</label>
                    <input type="text"  name="campoDescripcion" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                    <small id="emailHelp" class="form-text text-muted"></small>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Precio</label>
                    <input type="number"  name="campoPrecio" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                    <small id="emailHelp" class="form-text text-muted"></small>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Stock</label>
                    <input type="number"  name="campoStock" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                    <small id="emailHelp" class="form-text text-muted"></small>
                </div>
                <div>
                    <input type="submit" class="btn btn-success" name="btnIngresar" value="Añadir producto" id="button">
                </div>


            </form>
        </div>

        <%
            String nombre, descrip, foto;
            int precio,stock;
            Usuario cliente;
            HttpSession sesion = request.getSession();
            if (request.getParameter("btnIngresar") != null) {
                nombre = request.getParameter("campoNombre");
                descrip = request.getParameter("campoDescripcion");
                foto= request.getParameter("campoFoto");
                precio=Integer.parseInt(request.getParameter("campoPrecio").toString());
                stock=Integer.parseInt(request.getParameter("campoStock").toString());
                ProductoDAO.add(nombre, foto, descrip, precio, stock);
                response.sendRedirect("Controlador?accion=home");
            } else {
                

            }

        %>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html>
