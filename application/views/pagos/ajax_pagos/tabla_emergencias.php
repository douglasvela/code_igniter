<div class="card">
    <div class="card-header">
        <h4 class="card-title m-b-0">Listado de pagos de emergencia</h4>
    </div>
    <div class="card-body b-t"  style="padding-top: 7px;">
        <div class="pull-right">
            <button type="button" onclick="cambiar_nuevo();" class="btn waves-effect waves-light btn-success2" data-toggle="tooltip" title="Clic para agregar un nuevo registro"><span class="mdi mdi-plus"></span> Nuevo registro</button>
        </div>
        <div class="table-responsive">
            <table id="myTable" class="table table-hover product-overview">
                <thead class="bg-info text-white">
                    <tr>
                        <th>#</th>
                        <th>Nombre</th>
                        <th>Descripción</th> 
                        <th>(*)</th>
                    </tr>
                </thead>
                <tbody>
                <?php 
                    $bancos = $this->db->get("vyp_bancos");
                    if(!empty($bancos)){
                        foreach ($bancos->result() as $fila) {
                            echo "<tr>";
                            echo "<td>".$fila->id_banco."</td>";
                            echo "<td>".$fila->nombre."</td>";
                            echo "<td>".$fila->caracteristicas."</td>";

                            echo "<td>";
                            $array = array($fila->id_banco, $fila->nombre, $fila->caracteristicas);

                            array_push($array, "edit");
                            echo generar_boton($array,"cambiar_editar","btn-info","fa fa-wrench","Editar");
                           
                            unset($array[endKey($array)]); //eliminar el ultimo elemento de un array
                            array_push($array, "delete");
                            echo generar_boton($array,"cambiar_editar","btn-danger","fa fa-close","Eliminar");
                            
                            echo "</td>";

                           echo "</tr>";
                        }
                    }
                ?>
                </tbody>
            </table>
        </div>
    </div>
</div>
<script>
    $(document).ready(function() {
        $('#myTable').DataTable();
    });

</script>