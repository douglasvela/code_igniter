<?php
class Reportes_viaticos_model extends CI_Model {
 
    function __construct()
    {
        parent::__construct();
    }
 
 
    function obtenerListaviatico()
    {
      
        $viaticos = $this->db->get('vyp_mision_oficial');
        return $viaticos;
    }
}
?>