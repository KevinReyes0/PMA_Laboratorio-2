<%-- 
    Document   : form-carros
    Created on : 23 jul 2024, 0:07:29
    Author     : reyes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Formulario carros</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <body>
        <nav class="navbar navbar-dark bg-dark fixed-top position-relative">
            <div class="container-fluid">
                <a class="navbar-brand" href="./index.jsp">Formulario para agregar carros</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
                    <div class="offcanvas-header">
                        <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">Formulario para agregar carros</h5>
                        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body">
                        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                            <li class="nav-item">
                                <a class="nav-link"  href="../index.jsp">Inicio</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" href="./form-carros/form-carros.jsp">Formulario para agregar carros</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="../carro-servlet">Lista de carros</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
        </div>
        <div class="container mt-5 w-50">
            <form action="/VentaCarros/carro-servlet" method="post" enctype="multipart/form-data">
                <div class="form-floating mb-3">
                    <input type="text" class="form-control"o id="marca" name="marca" placeholder="">
                    <label for="marca">Marca del carro</label>
                </div>
                <div class="form-floating mb-3">
                    <input type="text" class="form-control"o id="modelo" name="modelo" placeholder="">
                    <label for="modelo">Modelo del carro</label>
                </div>  
                <div class="form-floating mb-3">
                    <input type="text" class="form-control"o id="color" name="color" placeholder="">
                    <label for="color">Color del carro</label>
                </div> 
                <div class="form-floating mb-3">
                    <input type="text" class="form-control"o id="placa" name="placa" placeholder="">
                    <label for="placa">Placa del carro</label>
                </div> 
                <div>
                    <input class="btn btn-outline-danger" type="submit" value="Agregar">
                </div>
            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
