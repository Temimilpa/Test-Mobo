<style>
    .ui-widget-header{
        background:#449d44!important;
        border-color:#4cae4c!important;
    }
    .ui-state-default, .ui-widget-content .ui-state-default, .ui-widget-header .ui-state-default{
        color:#000!important;
        background:#449d44!important;
        border-color:#4cae4c!important;
    }
    .ui-state-hover{
        color:#000!important;
        background:#449d44!important;
        border-color:#4cae4c!important;
        
    }
</style>    

<p class="alert alert-success" style="text-align:center">ENVÍOS GRATIS A PARTIR DE $<?php echo $costo_envio['costo']; ?> </p>
<div class="row">
    <div class="col-12" style="text-align:center;margin-top:50px">
        <h1>CARRITO DE COMPRAS</h1>
    </div>
</div>
<br><br><br>
<div class="container" style="border:1px solid #ccc;padding:20px;border-radius: 10px;">
<div class="row">
    <div class="col-md-6 col-6" style="font-size:18px"><strong>PRODUCTO</strong></div>
    <div class="col-md-3 col-3" style="font-size:18px;text-align:right"><strong>PRECIO</strong></div>
    <div class="col-md-3 col-3" style="font-size:18px;text-align:right"><strong>TOTAL</strong></div>
</div>
<?php
$subtotal=0;
$envio=0;
foreach ($products as $id_product) :
    $productos = $this->Administrator_Model->get_products($id_product);
    echo "<div class='row' style='margin-top:50px'>";
        echo '<div class="col-md-6 col-6"><img style="width:40px;"  class ="post-thumb img-fluid" src="' . site_url() . 'assets/images/products/' . $productos['image'] . '">'.'  '.
        $productos['name'] . '</div>';
        echo '<div class="col-md-3 col-3" style="text-align:right"><h4>$' . number_format($productos['price'], 2) . '</h4></div>';
        echo '<div class="col-md-3 col-3" style="text-align:right"><h4>$' . number_format($productos['price'], 2) . '</h4></div>';
    echo "</div>";
    $subtotal=$subtotal+$productos['price'];
endforeach;

if($subtotal<$costo_envio['costo']){
    $envio=300;
}else{
    $envio=0;
}
$total=$subtotal+$envio;
?>
<br>
<hr>
<br>
<div class="row">
    <div class="col-md-9 col-12">
        <div class="form-group">
            <label for="nombre_cliente">Nombre:</label>
            <input  class="form-control" id="nombre_cliente" placeholder="Ingresa tu nombre para finalizar la compra" required>
        </div>
    </div>
    <div class="col-md-3 col-12" style="text-align:right;font-size:18px">
        <strong>Subtotal: </strong>$<?php echo number_format($subtotal,2); ?><br><br>
        <strong>Costo de envío:</strong> $<?php echo number_format($envio,2); ?><br><br>    
        <strong>TOTAL:</strong>$<?php echo number_format($total,2); ?><br><br>
        <button type="button" class="btn btn-success" onclick="click_boton_finalizar()" id="">FINALIZAR COMPRA</button>
    </div>
</div>
</div>
<div id = "error_nombre" title ="MOBO">
    
    Ingresa tu nombre para finalizar la compra
    
</div>
<div id = "modal_finalizar" title ="MOBO">    
    ¡Gracias por tu compra, vuelve pronto!    
</div>

<script type="text/javascript">
    $(function() {
        $( "#error_nombre" ).dialog({
           autoOpen: false,
           modal : false
        });  
        
        $( "#modal_finalizar" ).dialog({
           autoOpen: false,
           modal : false,
           buttons: {
                "Aceptar": function () {
                    $(this).dialog("close");
                    window.location.replace("<?php echo site_url()?>");
                }
            }
        }); 
     });
    

    function click_boton_finalizar(){
        //alert(clicked_id);       
       var nombre_cliente= document.getElementById("nombre_cliente").value;
       var subtotal=<?php echo $subtotal ?>;
       var total=<?php echo $total ?>;
       var envio=<?php echo $envio ?>;
       
       if(nombre_cliente==""){
            $( "#error_nombre" ).dialog( "open" );
            return false;
       }
              
       $.ajax({
            type : "POST",
            url  : 'save_order',
            dataType: "json",
            data: 'nombre_cliente='+$('#nombre_cliente').val()+'&subtotal='+subtotal+'&envio='+envio+'&total='+total,
                success: function(response){                   
                    console.log(response);
                    $( "#modal_finalizar" ).dialog( "open" );
                }                
        });
    }

</script>