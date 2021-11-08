<div class="col-12">
    <img src="<?php echo base_url(); ?>assets/images/banner.png" class="img-fluid">
</div>
<h1>PRODUCTOS DESTACADOS</h1>
<div class="row">
<?php foreach($products as $product) : ?>
	<div class="col-md-4" style="margin-top:50px;max-height:600px;height:100%;padding:20px">
		<img style="height:450px;"  class ="post-thumb img-fluid" src="<?php echo site_url();?>assets/images/products/<?php echo $product['image']; ?> ">
        <br>
        <h4> <?php echo $product['name']; ?></h4>
        <br>
        <h4> $<?php echo number_format($product['price'],2); ?></h4>
        <br>
        <button type="button" class="btn btn-success" onclick="click_boton_agregar(this.id)" id="<?php echo $product['id']; ?>">Agregar al carrito</button>
	</div>
<?php endforeach; ?>
</div>

<script type="text/javascript">
    function click_boton_agregar(clicked_id){
        //alert(clicked_id);       
       var input_num_products= document.getElementById("input_num_products").value;
       input_num_products=parseInt(input_num_products)+1;
       document.getElementById("input_num_products").value=input_num_products;
       var cart_num_products = document.getElementById('cart_num_products');  
       cart_num_products.innerHTML = input_num_products;
       $.ajax({
            type : "POST",
            url  : 'pages/addcart',
            dataType: "json",
            data: 'id='+clicked_id,
                success: function(response){                   
                    console.log(response);
                }
                
        });

    }
</script>