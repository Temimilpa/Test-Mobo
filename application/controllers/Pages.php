<?php 
	class Pages extends CI_Controller{

		public function view($page = 'home'){
			if (!file_exists(APPPATH.'views/pages/'.$page.'.php')) {
				show_404();
			}
			if(!$this->session->userdata('number_products_cart')){
				$data['number'] =0;
			}else{
				$data['number'] =$this->session->userdata('number_products_cart');
			}
			$data['costo_envio'] = $this->Administrator_Model->get_costo_envio();			
			$data['products'] = $this->Administrator_Model->get_products();
			$data['title'] = ucfirst($page);
			$this->load->view('templates/header', $data);
			$this->load->view('pages/'.$page, $data);
			$this->load->view('templates/footer');
		}
		public function addcart(){
			$id = $this->input->post('id');			

			if(!$this->session->userdata('cart')){
				$cart_contenido = array();	
			}else{
				$cart_contenido = $this->session->userdata('cart');
			}
			
			array_push($cart_contenido,$id);
						
			$this->session->set_userdata('cart', $cart_contenido);
			$this->session->set_userdata('number_products_cart',sizeof( $cart_contenido));
			$data = $this->session->userdata("cart");			
			$msg = "";
			if(!empty($data)){
				$msg = 'ok';
			}else{
				$msg = 'fail_sess';
			}
			$response = array('msg' =>$msg,'data_sess' => $data);
			
			echo json_encode($response);
		} 

		public function cart($page = 'cart'){
			if (!file_exists(APPPATH.'views/pages/'.$page.'.php')) {
				show_404();
			}
			$data['costo_envio'] = $this->Administrator_Model->get_costo_envio();	
			$data['title'] = ucfirst($page);

			$this->load->view('templates/header_cart', $data);
			if(!$this->session->userdata('cart')){				
				$this->load->view('pages/cart_empty');
			}else{
				$data['products'] = $this->session->userdata("cart");
				$this->load->view('pages/'.$page, $data);
			}
			$this->load->view('templates/footer');
			
		}

		public function save_order(){
	
			$id_order=$this->Administrator_Model->save_order();

			$products = $this->session->userdata("cart");
			
			foreach ($products as $id_product) :
				$this->Administrator_Model->save_product_order($id_product,$id_order);				
			endforeach;		

			$msg = 'ok';
			$response = array('msg' =>$msg);
			echo json_encode($response);

			$this->session->sess_destroy();			
		} 

		public function salir(){
			$this->session->sess_destroy();
			header('Location:'.  base_url() );
			
		}

	}
	