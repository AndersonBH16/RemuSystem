$(document).ready(function(){
    $('.generic_table').DataTable().destroy();
    $('.generic_table').DataTable({
        "lengthMenu": [[25, 50, 100, -1], [25, 50, 100, "All"]],
        "language": {
            "lengthMenu": "Mostrar _MENU_ registros",
            "zeroRecords": "No se encontraron resultados",
            "info": "Mostrando registros del _START_ al _END_ de un total de _TOTAL_",
            "infoEmpty": "No se encontraron registros disponibles",
            "infoFiltered": "(filtered from _MAX_ total records)",
            "oPaginate" : {
                "sFirst":    "Primero",
                "sLast":     "Último",
                "sNext":     "Siguiente",
                "sPrevious": "Anterior"
            },
            "search": "Buscar:",
            "LoadingRecords": "Cargando..."
        }
    });
});
