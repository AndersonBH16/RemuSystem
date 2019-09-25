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
        <script src="vistas/com/icons/js/fontawesome.min.js"></script>
        <!--Bootstrap cs-->
        <link rel="stylesheet" href="vistas/com/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="vistas/com/icons/css/fontawesome.min.css">
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
                            <div class="form-group input-group">
                                <input id="dni" type="text" class="form-control" placeholder="Ingrese DNI"><span onclick="borrarTexto()" class="fa fa-window-close-o"></span>
                            </div>
                            <div class="form-group offset-4">
                                <button class="btn btn-info" onclick="mostrarTrabajadores()">Buscar</button>
                            </div>
                        </div>
                    </div>                    
                </div>
                <div class="col-lg-8">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="text-center">Tabla de Personal</h4>
                            <table id="" class="table table-responsive table-bordered">
                                <thead class="thead-dark">
                                    <tr>
                                    <th>N°</th>
                                    <th>DNI</th>
                                    <th>Nombres</th>
                                    <th>Apellido Paterno</th>
                                    <th>Apellido Materno</th>
                                    <th>Fecha de Nacimiento</th>
                                    <th>Email</th>
                                    <th>Dirección</th>
                                    <th>Código Essalud</th>
                                    <th>Estado</th>
                                </tr>
                                </thead>
                                <tbody id="tablaPersonal">
                                    
                                </tbody>                                
                            </table>
                        </div>                        
                    </div>                    
                </div>         
            </div>    
        </div>
        <script src="vistas/consultas.js"></script>
    </body>
</html>
