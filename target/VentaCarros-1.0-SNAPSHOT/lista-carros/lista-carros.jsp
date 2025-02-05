<%-- 
    Document   : lista-carros
    Created on : 22 jul 2024, 22:54:02
    Author     : reyes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import = "java.util.List" %>
<%@page import= "org.kevinreyes.webapp.model.Carro"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Lista de carros</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <body>
        <nav class="navbar navbar-dark bg-dark fixed-top position-relative">
            <div class="container-fluid">
                <a class="navbar-brand" href="./index.jsp">Lista de carros</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
                    <div class="offcanvas-header">
                        <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">Lista de carros</h5>
                        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body">
                        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                            <li class="nav-item">
                                <a class="nav-link" href="./index.jsp">Inicio</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="./form-carros/form-carros.jsp">Formulario para agrar carros</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" href="/carro-servlet">Lista de carros</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
        <div class="container position-relative mt-5"> 
           <table class="table table-success table-striped">
                <thead>
                    <tr>
                        <th scope="col">No. Carro#</th>
                        <th scope="col">Marca</th>
                        <th scope="col">Modelo</th>
                        <th scope="col">Color</th>
                        <th scope="col">Placa</th>
                    </tr>
                </thead>
                <tbody>
                    <% List<Carro> carros = (List)request.getAttribute("carros");%>
                    
                    <%for(Carro carro:carros){ %>
                    <tr class="table-success">
                        <th scope="row"><%=carro.getCarroId()%></th>
                        <th scope="row"><%=carro.getMarca()%></th>
                        <th scope="row"><%=carro.getModelo()%></th>
                        <th scope="row"><%=carro.getColor()%></th>
                        <th scope="row"><%=carro.getPlaca()%></th>
                    </tr>
                      <%  } %>
                </tbody>
                
            </table>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
