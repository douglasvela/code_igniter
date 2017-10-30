<div class="card">
    <div class="card-header">
        <div class="card-actions">
           
        </div>
        <h4 class="card-title m-b-0">Listado de Oficinas</h4>
    </div>
    <div class="card-body b-t"  style="padding-top: 7px;">
        <div class="pull-right">
            <button type="button" onclick="cambiar_nuevo();" class="btn waves-effect waves-light btn-success2"><span class="mdi mdi-plus"></span> Nuevo registro</button>
        </div>
        <div class="table-responsive">
            <table id="myTable" class="table table-bordered">
                <thead class="bg-info text-white">
                    <tr>
                        <th>Id</th>
                        <th>Nombre de la Oficina</th>
                        <th>Dirección de la Oficina</th>
                        <th>Jefe de la Oficina</th>
                        <th>Email de la Oficina</th>
                        <th>Tel.</th>
                        <th>(*)</th>
                    </tr>
                </thead>
                <tbody>
                <?php 
                	$oficinas = $this->db->get("vyp_oficinas");
                    if(!empty($oficinas)){
                        foreach ($oficinas->result() as $fila) {
                           echo "<tr>";
                           echo "<td>".$fila->id_oficina."</td>";
                           echo "<td>".$fila->nombre_oficina."</td>";
                           echo "<td>".$fila->direccion_oficina."</td>";
                           echo "<td>".$fila->jefe_oficina."</td>";
                           echo "<td>".$fila->email_oficina."</td>";
                 
                           $array = array($fila->id_oficina, $fila->nombre_oficina, $fila->direccion_oficina, $fila->jefe_oficina, $fila->email_oficina, $fila->latitud_oficina,$fila->longitud_oficina);
                           $arrayTel = array($fila->id_oficina,$fila->nombre_oficina);
                           echo boton_form_telefono($arrayTel,"cambiar_phone");
                           echo boton_tabla($array,"cambiar_editar");

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
$(function(){
    $(document).ready(function() {
        $('#myTable').DataTable();
    });
});
</script>