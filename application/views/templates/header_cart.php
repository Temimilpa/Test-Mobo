<!DOCTYPE html>
<html lang="en">
  <head>
    <title>MOBO - Tienda</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
    <!-- Favicon icon -->
    <link rel="icon" href="<?php echo base_url(); ?>admintemplate/assets/images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>admintemplate/assets/css/bootstrap.icon-large.css">
    <script src="https://use.fontawesome.com/e339bdc2bb.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="http://cdn.ckeditor.com/4.7.1/full/ckeditor.js"></script>
    <link rel = "stylesheet" href ="https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css">
    <script src ="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src ="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
</head>  
<body>
  <nav class="navbar navbar-inverse" style="position: fixed; top: 0; right: 0; left: 0;z-index: 1030;-webkit-box-shadow: 0 3px 7px 0 rgb(0 0 0 / 20%);
    -moz-box-shadow: 0 3px 7px 0 rgba(0,0,0,.2); box-shadow: 0 3px 7px 0 rgb(0 0 0 / 20%);">
  	<div class="container">
  		<div class="navbar-header">
    		<a class="navbar-brand" href="<?php echo base_url(); ?>"><img src="<?php echo base_url(); ?>assets/images/logo.png" alt="Site Logo" class="img-fluid" style="width: auto; height: 30px;" ></a>	
  		</div>
  		<div id="navbar">
  		 <ul class="nav navbar-nav">
  		 	  		 	
  		 </ul>	
       <ul class="nav navbar-nav navbar-right">

       </ul>  
  		</div>
  	</div>
  </nav>

  <div class="container">
    <p class="alert alert-success" style="text-align:center">ENVÍOS GRATIS A PARTIR DE $<?php echo $costo_envio['costo']; ?> </p>
          
  <!-- Flash Messages -->
  <!--
    <?php if($this->session->flashdata('user_registered')): ?>
      <?php echo '<p class="alert alert-success">'.$this->session->flashdata('user_registered').'</p>'; ?>
    <?php endif; ?>

     <?php if($this->session->flashdata('post_created')): ?>
      <?php echo '<p class="alert alert-success">'.$this->session->flashdata('post_created').'</p>'; ?>
    <?php endif; ?>

     <?php if($this->session->flashdata('post_updated')): ?>
      <?php echo '<p class="alert alert-success">'.$this->session->flashdata('post_updated').'</p>'; ?>
    <?php endif; ?>

    <?php if($this->session->flashdata('category_created')): ?>
      <?php echo '<p class="alert alert-success">'.$this->session->flashdata('category_created').'</p>'; ?>
    <?php endif; ?>

    <?php if($this->session->flashdata('post_deleted')): ?>
      <?php echo '<p class="alert alert-success">'.$this->session->flashdata('post_deleted').'</p>'; ?>
    <?php endif; ?>

    <?php if($this->session->flashdata('login_failed')): ?>
      <?php echo '<p class="alert alert-danger">'.$this->session->flashdata('login_failed').'</p>'; ?>
    <?php endif; ?>

    <?php if($this->session->flashdata('user_loggedin')): ?>
      <?php echo '<p class="alert alert-success">'.$this->session->flashdata('user_loggedin').'</p>'; ?>
    <?php endif; ?>

    <?php if($this->session->flashdata('user_loggedout')): ?>
      <?php echo '<p class="alert alert-success">'.$this->session->flashdata('user_loggedout').'</p>'; ?>
    <?php endif; ?>

     <?php if($this->session->flashdata('category_deleted')): ?>
      <?php echo '<p class="alert alert-success">'.$this->session->flashdata('category_deleted').'</p>'; ?>
    <?php endif; ?>
  -->