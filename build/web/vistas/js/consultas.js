/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function(){
    mostrarTrabajadores();
//    $('#tablaPersonal').DataTable({
//        "destroy" : true,
//        ajax:{
//            method: "POST",
//            url: "controlador",
//            dataSrc: "datos"
//        },
//        columns:[
//            {"data" : "dni"},
//            {"data" : "nombres"},
//            {"data" : "fecha_nacimiento"}
//        ]
//    });
});

function mostrarTrabajadores(){
    var dni = $('#dni').val();
    if (dni){
        var datos = {
            "dni" : dni
        };
    }else{
        var datos = {
            "dni" : undefined
        };
    }
    
    //$('#tablaPersonal').DataTable().fnDestroy();
    $('#tablaPersonal').DataTable({
        ajax: {
            method: "POST",
            url: "controlador",
            data: datos,
            dataSrc: "datos"
        },
        columns:  [
            {"data" : "dni"},
            {"data" : "nombres"},
            {"data" : "fecha_nacimiento"}
        ]
    });
    
//    if(dni == ""){
//        var datos = {
//            "dni" : undefined
//        };    
//        $.ajax({
//            url:"controlador",
//            method: "POST",
//            data: datos,
//            success:function(response){
//                debugger;
//                var respuesta = JSON.parse(response);
//                console.log(respuesta);
//                console.log(respuesta["datos"][0]["dni"]);
//                debugger;
//                
//            }
//        });
//    }else{
//        var datos = {
//            "dni" : dni
//        };    
//        $.ajax({
//            url:"controlador",
//            method: "POST",
//            data: datos,
//            success:function(respuesta){
//                for(var i = 0; i < respuesta.length; i++) {
//                    $('#tablaPersonal').html(respuesta);
//                }
//            }
//        });
//    }    
}

function borrarTexto(){
    $('#dni').val("");
    mostrarTrabajadores();
}

function hola(){
    alert("izi");
}

//$('button').on('click', function(){
//    alert("testing..!");
//});