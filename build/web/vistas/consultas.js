/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function(){
    
});


function mostrarEmpleado(){
    debugger;
    var dni = $('#dni').val();
    
    var datos = {
        "dni" : dni
    };
    
    $.ajax({
        url:"../vistas/consultas.js",
        method: "POST",
        data: datos,
        success:function(respuesta){
            
        }
    });
}

//$('button').on('click', function(){
//    alert("testing..!");
//});


