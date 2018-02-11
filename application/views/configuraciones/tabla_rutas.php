<?php
        
?>
<div class="card">
    <div class="card-header">
        <div class="card-actions">


        </div>
        <h4 class="card-title m-b-0">Listado de Rutas</h4>
    </div>
    <div class="card-body b-t"  style="padding-top: 7px;">
        <div class="pull-left">
            <div class="">
            <label for="" class="font-weight-bold">Opcion de destino:  </label><br>
            <input type="radio" id="m_destino_oficina" <?php if($this->uri->segment(4)=="destino_oficina"){?> checked <?php }?> name="m_gender" value="m_destino_oficina" onclick="tablaRutas('destino_oficina',<?php  echo $this->uri->segment(5); ?>);">
            <label for="m_destino_oficina">Oficina</label>
            <input type="radio" id="m_destino_municipio" <?php if($this->uri->segment(4)=="destino_municipio"){?> checked <?php }?> name="m_gender" value="m_destino_municipio" onclick="tablaRutas('destino_municipio',<?php echo $this->uri->segment(5) ?>);">
            <label for="m_destino_municipio">Municipio</label>
            <input type="radio" id="m_destino_mapa" <?php if($this->uri->segment(4)=="destino_mapa"){?> checked <?php }?> name="m_gender" value="m_destino_mapa" onclick="tablaRutas('destino_mapa',<?php  echo $this->uri->segment(5); ?>);">
            <label for="m_destino_mapa">Buscar en Mapa</label>
        </div>
        </div>
        <div class="pull-right">
        <?php 
            $data['id_modulo'] = $this->uri->segment(5);
            $data['id_usuario'] = $this->session->userdata('id_usuario_viatico');
            $data['id_permiso']="2";
          if(buscar_permiso($data)){
        ?>
            <button type="button" onclick="cambiar_nuevo();" class="btn waves-effect waves-light btn-success2"><span class="mdi mdi-plus"></span> Nuevo registro</button>
            <?php
          } 
          ?>
        </div>

        <div class="table-responsive">
            <table id="myTable" class="table table-hover product-overview">
                <thead class="bg-info text-white">
                    <tr>
                    <?php if($tipo_destino=="destino_oficina") {?>
                        <th>#</th>
                        <th>Origen</th>
                        <th>Descripcion Destino</th>
                        <th>Destino</th>
                        <th>Distancia(km)</th>
                        <th style="min-width: 85px;">*</th>
                    <?php }else if($tipo_destino=="destino_municipio"){?>
                        <th>#</th>
                        <th>Origen</th>
                        <th>Descripcion Destino</th>
                        <th>Departamento</th>
                        <th>Municipio</th>
                        <th>Distancia(km)</th>
                        <th style="min-width: 85px;">*</th>
                    <?php }else if($tipo_destino=="destino_mapa"){?>
                        <th>#</th>
                        <th>Origen</th>
                        <th>Empresa Destino</th>
                        <th>Dirección Destino</th>
                        <th>Descripcion Destino</th>
                        <th>Departamento</th>
                        <th>Municipio</th>
                        <th>Distancia(km)</th>
                        <th style="display:none">Distancia(Lat,Lng)</th>
                        <th style="min-width: 85px;">*</th>
                    <?php }?>
                    </tr>
                </thead>
                <tbody>
                <?php
                if($tipo_destino=="destino_oficina") {
                    if(!empty($rutas)){
                        foreach ($rutas->result() as $fila) {
                           echo "<tr>";
                            echo "<td>".$fila->id_vyp_rutas."</td>";
                           $this->db->where("id_oficina",$fila->id_oficina_origen_vyp_rutas);
                            $query = $this->db->get("vyp_oficinas");
                            foreach ($query->result() as $f) {
                                echo "<td>".$f->nombre_oficina."</td>";
                            }


                           echo "<td>".$fila->descripcion_destino_vyp_rutas."</td>";

                           $this->db->where("id_oficina",$fila->id_oficina_destino_vyp_rutas);
                            $query2 = $this->db->get("vyp_oficinas");
                            foreach ($query2->result() as $f2) {
                                echo "<td>".$f2->nombre_oficina."</td>";
                            }

                           echo "<td>".$fila->km_vyp_rutas."</td>";


                            echo "<td>";
                            $array = array($fila->id_vyp_rutas,$fila->id_oficina_origen_vyp_rutas,$fila->descripcion_destino_vyp_rutas,$fila->id_oficina_destino_vyp_rutas,$fila->km_vyp_rutas);
                            $data['id_modulo'] = $this->uri->segment(5);
                            $data['id_usuario'] = $this->session->userdata('id_usuario_viatico');
                            $data['id_permiso']="4";
                            if(buscar_permiso($data)){
                                array_push($array, "edit");
                                echo generar_boton($array,"editar_oficina","btn-info","fa fa-wrench","Editar");
                            }
                            $data['id_modulo'] = $this->uri->segment(5);
                            $data['id_usuario'] = $this->session->userdata('id_usuario_viatico');
                            $data['id_permiso']="3";
                            if(buscar_permiso($data)){
                                unset($array[endKey($array)]); //eliminar el ultimo elemento de un array
                                $array = array($fila->id_vyp_rutas);
                                array_push($array, "delete");
                                echo generar_boton($array,"eliminar_ruta","btn-danger","fa fa-close","Eliminar");
                            }
                            echo "</td>";

                           echo "</tr>";
                        }
                    }
                }else if($tipo_destino=="destino_municipio"){
                    if(!empty($rutas)){
                        foreach ($rutas->result() as $fila) {
                           echo "<tr>";
                          echo "<td>".$fila->id_vyp_rutas."</td>";
                          $this->db->where("id_oficina",$fila->id_oficina_origen_vyp_rutas);
                            $query3 = $this->db->get("vyp_oficinas");
                            foreach ($query3->result() as $f3) {
                                echo "<td>".$f3->nombre_oficina."</td>";
                            }

                           echo "<td>".$fila->descripcion_destino_vyp_rutas."</td>";
                           $this->db->where("id_departamento",$fila->id_departamento_vyp_rutas);
                            $depto = $this->db->get("org_departamento");
                            foreach ($depto->result() as $deptof) {
                                echo "<td>".$deptof->departamento."</td>";
                            }

                           $this->db->where("id_municipio",$fila->id_municipio_vyp_rutas);
                            $muni = $this->db->get("org_municipio");
                            foreach ($muni->result() as $munif) {
                                echo "<td>".$munif->municipio."</td>";
                            }

                           echo "<td>".$fila->km_vyp_rutas."</td>";


                            echo "<td>";
                            $array = array($fila->id_vyp_rutas,$fila->id_oficina_origen_vyp_rutas,$fila->descripcion_destino_vyp_rutas,$fila->id_departamento_vyp_rutas,$fila->id_municipio_vyp_rutas,$fila->km_vyp_rutas);
                            $data['id_modulo'] = $this->uri->segment(5);
                            $data['id_usuario'] = $this->session->userdata('id_usuario_viatico');
                            $data['id_permiso']="4";
                            if(buscar_permiso($data)){
                                array_push($array, "edit");
                                echo generar_boton($array,"editar_municipio","btn-info","fa fa-wrench","Editar");
                            }
                            $data['id_modulo'] = $this->uri->segment(5);
                            $data['id_usuario'] = $this->session->userdata('id_usuario_viatico');
                            $data['id_permiso']="3";
                            if(buscar_permiso($data)){
                                unset($array[endKey($array)]); //eliminar el ultimo elemento de un array
                                array_push($array, "delete");
                                echo generar_boton($array,"eliminar_ruta","btn-danger","fa fa-close","Eliminar");
                            }
                            echo "</td>";

                           echo "</tr>";
                        }
                    }
                }else if($tipo_destino=="destino_mapa"){
                     if(!empty($rutas)){
                        foreach ($rutas->result() as $fila) {
                           echo "<tr>";
                          echo "<td>".$fila->id_vyp_rutas."</td>";
                           $this->db->where("id_oficina",$fila->id_oficina_origen_vyp_rutas);
                            $query = $this->db->get("vyp_oficinas");
                            foreach ($query->result() as $f) {
                                echo "<td>".$f->nombre_oficina."</td>";
                            }
                            echo "<td>".$fila->nombre_empresa_vyp_rutas."</td>";
                            echo "<td>".$fila->direccion_empresa_vyp_rutas."</td>";
                           echo "<td>".$fila->descripcion_destino_vyp_rutas."</td>";

                           $this->db->where("id_departamento",$fila->id_departamento_vyp_rutas);
                            $depto = $this->db->get("org_departamento");
                            foreach ($depto->result() as $deptof) {
                                echo "<td>".$deptof->departamento."</td>";
                            }
                           $this->db->where("id_municipio",$fila->id_municipio_vyp_rutas);
                            $muni = $this->db->get("org_municipio");
                            foreach ($muni->result() as $munif) {
                                echo "<td>".$munif->municipio."</td>";
                            }
                           echo "<td>".$fila->km_vyp_rutas."</td>";
                           //echo "<td>".$fila->latitud_destino_vyp_rutas.",".$fila->longitud_destino_vyp_rutas."</td>";


                            echo "<td>";
                            $array = array($fila->id_vyp_rutas,$fila->id_oficina_origen_vyp_rutas,$fila->descripcion_destino_vyp_rutas,$fila->id_departamento_vyp_rutas,$fila->id_municipio_vyp_rutas,$fila->km_vyp_rutas,$fila->latitud_destino_vyp_rutas,$fila->longitud_destino_vyp_rutas,$fila->nombre_empresa_vyp_rutas,$fila->direccion_empresa_vyp_rutas);
                            $data['id_modulo'] = $this->uri->segment(5);
                            $data['id_usuario'] = $this->session->userdata('id_usuario_viatico');
                            $data['id_permiso']="4";
                            if(buscar_permiso($data)){
                                array_push($array, "edit");
                                echo generar_boton($array,"editar_mapa","btn-info","fa fa-wrench","Editar");
                            }
                            $data['id_modulo'] = $this->uri->segment(5);
                            $data['id_usuario'] = $this->session->userdata('id_usuario_viatico');
                            $data['id_permiso']="3";
                            if(buscar_permiso($data)){
                                unset($array[endKey($array)]); //eliminar el ultimo elemento de un array
                                array_push($array, "delete");
                                echo generar_boton($array,"eliminar_ruta","btn-danger","fa fa-close","Eliminar");
                            }
                            echo "</td>";

                           echo "</tr>";
                        }
                    }
                }
                ?>
                </tbody>
            </table>
        </div>
    </div>
</div>




<script>
$(function(){
    $(document).ready(function() {
        $('#myTable').DataTable();
    });
});
</script>
