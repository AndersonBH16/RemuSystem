/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function(){
    mostrarTrabajadores();
});


function mostrarTrabajadores(){
    var dni = $('#dni').val();
    if(dni == ""){
        var datos = {
            "dni" : undefined
        };    
        $.ajax({
            url:"controlador",
            method: "POST",
            data: datos,
            success:function(respuesta){
                for(var i = 0; i < respuesta.length; i++) {
                    $('#tablaPersonal').html(respuesta);
                }
            }
        });
    }else{
        var datos = {
            "dni" : dni
        };    
        $.ajax({
            url:"controlador",
            method: "POST",
            data: datos,
            success:function(respuesta){
                for(var i = 0; i < respuesta.length; i++) {
                    $('#tablaPersonal').html(respuesta);
                }
            }
        });
    }    
}

function borrarTexto(){
    $('#dni').val() = '';
    mostrarTrabajadores();
}

//$('button').on('click', function(){
//    alert("testing..!");
//});


