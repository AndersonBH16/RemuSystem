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
        <!--Bootstrap css-->
        <link rel="stylesheet" href="vistas/com/bootstrap/css/bootstrap.min.css">        
        <!--Datatables-->
        <link rel="stylesheet" href="vistas/com/datatables/DataTables/css/dataTables.bootstrap4.min.css">
        <!--Íconos Fontawesome-->
        <link rel="stylesheet" href="vistas/com/icons/css/all.css">
        <!--Estilos internos-->
        <link rel="stylesheet" href="vistas/css/estilos.css">
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="padding-top: 0; padding-bottom: 0;">
            <div class="container-fluid">
                <a class="navbar-brand col-lg" href="#">
                    <img src="vistas/img/logo_unt.png" width="60" height="60" alt="" class="img-fluid" style="">
                    RemuSys<span style="font-size: 14px; color: #c6c8ca">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Oficina de remuneraciones</span>
                    <button class="navbar-toggler float-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-label="Toggle navigation" style="padding: 0">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                </a>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="#">Home <span class="sr-only"></span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Link</a>
                        </li>                        
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" 
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                              Dropdown
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                              <a class="dropdown-item" href="#">Action</a>
                              <a class="dropdown-item" href="#">Another action</a>
                              <div class="dropdown-divider"></div>
                              <a class="dropdown-item" href="#">Something else here</a>
                            </div>
                        </li>                        
                        <li class="nav-item dropdown" style="margin-right: 55px">
                            <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button">
                                <i class="fa fa-plus fa-xs"></i>
                                Más
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="#"><i class="fa fa-user fa-fw"></i>Ver Perfil</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#"><i class="fa fa-sign fa-fw"></i>Cerrar Sesión</a>
                            </div>
                        </li>                      
                    </ul>
                </div>                                                                            
            </div>
        </nav>              
        <div class="container" style="padding-top: 5%">
            <div class="row">
                <div class="col-lg-4">
                    <div class="card">
                        <div class="card-body">
                            <div class="form-group">
                                <h4 class="text-center">Búsqueda de personal</h4>
                                <br>
                            </div>
                            <div class="form-group input-group">
                                <input id="dni" type="text" class="form-control" placeholder="Ingrese DNI">
                                <span class="input-group-btn">
                                    <button class="btn btn-dark" onclick="borrarTexto()">
                                        <i class="fa fa-window-close"></i>
                                    </button>
                                </span>                                
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
                            <br>
                            <div class="table-responsive">                                
                                <!--<table id="tablaPersonal" class="table table-striped table-bordered compact generic_table" style="width: 100%;">-->
                                <table id="tablaPersonal" class="table table-bordered generic_table" style="width: 100%;">                                    
                                    <thead class="thead-dark">
                                        <tr>
                                            <th>N°</th>
                                            <th>DNI</th>
                                            <th>Nombres</th>
                                            <!-- <th>Apellido Paterno</th>
                                            <th>Apellido Materno</th>
                                            <th>Fecha de Nacimiento</th>
                                            <th>Email</th>
                                            <th>Dirección</th>
                                            <th>Código Essalud</th>
                                            <th>Estado</th> -->
                                        </tr>
                                    </thead>
                                </table>
                            </div>                            
                        </div>                        
                    </div>                    
                </div>         
            </div>
        </div>
        <!--JQuery-->
        <script src="vistas/com/jquery/jquery-3.4.1.min.js"></script>
        <!--Bootstrap js-->
        <script src="vistas/com/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="vistas/com/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!--Datatables-->        
        <script src="vistas/com/datatables/DataTables/js/jquery.dataTables.min.js" type="text/javascript"></script>
        <script src="vistas/com/datatables/DataTables/js/dataTables.bootstrap4.min.js" type="text/javascript"></script>
        <!--Mis scripts-->
        <script src="vistas/js/config_general.js"></script>
        <script src="vistas/js/consultas.js"></script>
    </body>
</html>
