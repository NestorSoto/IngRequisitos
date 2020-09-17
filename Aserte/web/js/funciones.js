$((document).ready(function(){
$("td #btnComprar").click(function(){
var idp = 1;
        eliminar(idp);
});
        function eliminar(idp){
        var url = "Controlador?accion=Pagar";
                $.ajax({
                type: 'POST',
                        url: url,
                        data: "idp=" + idp,
                        success: function(data, textStatus, jqXHR){
                        alert("Registro eliminado");
                        }

                });
        }
});
