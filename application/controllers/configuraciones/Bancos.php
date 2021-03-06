<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class bancos extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model('bancos_model');
	}

	public function index(){
		$this->load->view('templates/header');
		$this->load->view('configuraciones/bancos');
		$this->load->view('templates/footer');
	}

	public function tabla_bancos(){
		$this->load->view('configuraciones/bancos_ajax/tabla_bancos');
	}

	public function tabla_estructura_planilla(){
		$this->load->view('configuraciones/bancos_ajax/tabla_estructura_planilla');
	}

	public function gestionar_bancos(){		
		if($this->input->post('band') == "save"){
			$data = array(
			'nombre' => mb_strtoupper($this->input->post('nombre')), 
			'caracteristicas' => $this->input->post('caracteristicas'),
			'codigo_a' => $this->input->post('codigo_a'),
			'codigo_b' => $this->input->post('codigo_b'),
			'delimitador' => $this->input->post('delimitador')
			);
			echo $this->bancos_model->insertar_banco($data);
		}else if($this->input->post('band') == "edit"){
			$data = array(
			'idb' => $this->input->post('idb'), 
			'nombre' => mb_strtoupper($this->input->post('nombre')), 
			'caracteristicas' => $this->input->post('caracteristicas'),
			'codigo_a' => $this->input->post('codigo_a'),
			'codigo_b' => $this->input->post('codigo_b'),
			'delimitador' => $this->input->post('delimitador')
			);
			echo $this->bancos_model->editar_banco($data);
		}else if($this->input->post('band') == "delete"){
			$data = array(
			'idb' => $this->input->post('idb')
			);
			echo $this->bancos_model->eliminar_banco($data);
		}
	}

	public function agregar_columnas(){		
		$data = array(
			'id_banco' => $this->input->post('id_banco'), 
			'nombre_campo' => $this->input->post('nombre_campo'),
			'valor_campo' => $this->input->post('valor_campo')
		);
		echo $this->bancos_model->insertar_columna($data);
	}

	public function cambiar_orden(){		
		$data = array(
			'id_banco' => $this->input->post('id_banco'), 
			'id_columna' => $this->input->post('id_columna'),
			'orden' => $this->input->post('orden'),
			'orden_nuevo' => $this->input->post('orden_nuevo')
		);
		echo $this->bancos_model->cambiar_orden($data);
	}

	public function eliminar_columna(){		
		$data = array(
			'id_estructura' => $this->input->post('id_estructura')
		);
		echo $this->bancos_model->eliminar_columna($data);
	}

}
?>