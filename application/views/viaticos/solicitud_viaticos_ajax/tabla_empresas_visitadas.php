<div class="table-responsive container">
	<table id="target" class="table table-hover product-overview" style="margin-bottom: 0px;">
	  	<thead class="bg-inverse text-white">
	        <tr>
	      		<th>Empresa visitada</th>
	      		<th>Dirección</th>
                <th>Distancia</th>
	      		<th>(*)</th>
	    	</tr>
	  	</thead>
	  	<tbody>

	  		<?php 
	  			$id_mision = $_GET["id_mision"];
                $nr_usuario = $_GET["nr"];

                $info_empleado = $this->db->query("SELECT * FROM vyp_informacion_empleado WHERE nr = '".$nr_usuario."'");

                if($info_empleado->num_rows() > 0){ 
                    foreach ($info_empleado->result() as $filas) {}
                }

                $oficina_origen = $this->db->query("SELECT * FROM vyp_oficinas WHERE id_oficina = '".$filas->id_oficina_departamental."'");

                if($oficina_origen->num_rows() > 0){ 
                    foreach ($oficina_origen->result() as $filaofi) {}
                }

                $id_municipio = $filaofi->id_municipio;
                $id_departamento = $filaofi->id_departamento;

                $empresas = $this->db->query("SELECT * FROM vyp_empresas_visitadas WHERE id_mision_oficial = '".$id_mision."' AND (tipo_destino <> 'destino_oficina' OR id_municipio <> '".$id_municipio."' OR id_departamento <> '".$id_departamento."')");

                if($empresas->num_rows() > 0){
                    foreach ($empresas->result() as $fila) {
                      	echo "<tr>";
                        ?>
            			<td><?php echo $fila->nombre_empresa; ?><input type="hidden" value="<?php echo $fila->id_empresas_visitadas; ?>"></td>
		            	<td><?php echo $fila->direccion_empresa; ?></td>
                        <td><?php echo $fila->kilometraje." Km"; ?></td>
                        <?php
                        echo "<td>";
                        	$array = array($fila->id_empresas_visitadas, $fila->id_departamento, $fila->id_municipio, $fila->nombre_empresa, $fila->direccion_empresa, $fila->tipo_destino);
                            array_push($array, "delete");
                            echo generar_boton(array($fila->id_empresas_visitadas),"cambiar_eliminar_destino","btn-danger","fa fa-close","Eliminar");
                        echo "</td>";

                      	echo "</tr>";
                    }
                    $retorno = $this->db->query("SELECT * FROM vyp_empresas_visitadas WHERE id_mision_oficial = '".$id_mision."' AND (tipo_destino = 'destino_oficina' AND id_municipio = '".$id_municipio."' AND id_departamento = '".$id_departamento."')");

                    if($retorno->num_rows() > 0){
                        foreach ($retorno->result() as $fila2) {
                            echo "<tr style='display: block;''>";
                            ?>
                            <td><?php echo $fila2->nombre_empresa; ?><input type="hidden" value="<?php echo $fila2->id_empresas_visitadas; ?>"></td>
                            <td><?php echo $fila2->direccion_empresa; ?></td>
                            <?php
                            echo "<td>";
                            echo "</td>";

                            echo "</tr>";
                        }
                    }

                }else{
            ?>
            <tr>
            	<td colspan="4">No se ha registrado empresas visitadas</td>
            </tr>
            <?php } ?>

	  	</tbody>
	</table>
	<hr style="margin-top: 0px;">
</div>