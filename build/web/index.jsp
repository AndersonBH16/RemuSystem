<%-- 
    Document   : index.jsp
    Created on : 11/09/2019, 05:13:28 PM
    Author     : Anderson Blas
--%>

<%@page import="librerias.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>                
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">        
        <title>RemuSystem</title>
        <!--JQuery-->
        <script src="vistas/com/jquery/jquery-3.4.1.min.js"></script>
        <!--Bootstrap js-->
        <script src="vistas/com/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!--Bootstrap cs-->
        <link rel="stylesheet" href="vistas/com/bootstrap/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container" style="padding: 5%">
            <div class="row">
                <div class="col-lg-4">
                    <div class="card">
                        <div class="card-body">
                            <div class="form-group">
                                <h4 class="text-center">Búsqueda de personal</h4>
                            </div>
                            <div class="form-group offset-2">
                                <input id="dni" type="text" class="justify-content-center" placeholder="Ingrese DNI">
                            </div>
                            <div class="form-group offset-4">
                                <button class="btn btn-info" onclick="mostrarEmpleado()">Buscar</button>
                            </div>
                        </div>
                    </div>                    
                </div>
                <div class="col-lg-4">
                    <div class="card">
                        <div class="card-body ">
                            <h4 class="text-center">Tabla de Personal</h4>
                            <button class="btn btn-success" onclick="mostrarEmpleado()">Testing</button>
                        </div>                        
                    </div>                    
                </div>         
            </div>    
        </div>
        <script src="vistas/consultas.js"></script>
    </body>
</html>
