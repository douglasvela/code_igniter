<script type="text/javascript">
    function cambiar_editar(id,descripcion,hora_inicio,hora_fin,monto){
        $("#idhorario").val(id);
        $("#descripcion").val(descripcion);
        $("#hora_inicio").val(hora_inicio);
        $("#hora_fin").val(hora_fin);
        $("#monto").val(monto);

        $("#ttl_form").removeClass("bg-success");
        $("#ttl_form").addClass("bg-info");

        $("#btnadd").hide(0);
        $("#btnedit").show(0);

        $("#cnt-tabla").hide(0);
        $("#cnt_form").show(0);

        $("#ttl_form").children("h4").html("<span class='fa fa-wrench'></span> Editar viático");
    }

    function cambiar_nuevo(){
        $("#idhorario").val("");
        $("#descripcion").val("");
        $("#hora_inicio").val("");
        $("#hora_fin").val("");
        $("#monto").val("");
        $("#band").val("save");

        $("#ttl_form").addClass("bg-success");
        $("#ttl_form").removeClass("bg-info");

        $("#btnadd").show(0);
        $("#btnedit").hide(0);

        $("#cnt-tabla").hide(0);
        $("#cnt_form").show(0);

        $("#ttl_form").children("h4").html("<span class='mdi mdi-plus'></span> Nuevo viático");
    }

    function cerrar_mantenimiento(){
        $("#cnt-tabla").show(0);
        $("#cnt_form").hide(0);
    }

    function editar_horario(obj){
        $("#band").val("edit");
        $("#submit").click();
    }

    function eliminar_horario(obj){
        $("#band").val("delete");
        $("#submit").click();
    }

    function iniciar(){
        <?php if($notificacion != "nada"){ ?>
            $("#notificacion").click();
        <?php } ?>
    }

    

</script>

<!-- ============================================================== -->
<!-- Inicio de DIV de inicio (ENVOLTURA) -->
<!-- ============================================================== -->
<div class="page-wrapper">
    <div class="container-fluid">
        <button id="notificacion" style="display: none;" class="tst1 btn btn-success2">Info Message</button>
        <!-- ============================================================== -->
        <!-- TITULO de la página de sección -->
        <!-- ============================================================== -->
        <div class="row page-titles">
            <div class="align-self-center" align="center">
                <h3 class="text-themecolor m-b-0 m-t-0">Gestión de horario de viáticos</h3>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- Fin TITULO de la página de sección -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Inicio del CUERPO DE LA SECCIÓN -->
        <!-- ============================================================== -->
        <div class="row">
            <!-- ============================================================== -->
            <!-- Inicio del FORMULARIO de gestión -->
            <!-- ============================================================== -->
            <div class="col-lg-1"></div>
            <div class="col-lg-10" id="cnt_form" style="display: none;">
                <div class="card">
                    <div class="card-header bg-success2" id="ttl_form">
                        <div class="card-actions text-white">
                            <a style="font-size: 16px;" onclick="cerrar_mantenimiento();"><i class="mdi mdi-window-close"></i></a>
                        </div>
                        <h4 class="card-title m-b-0 text-white">Listado de viáticos</h4>
                    </div>
                    <div class="card-body b-t">
                        
                        <?php echo form_open('horarios/gestionar_horarios', array('style' => 'margin-top: 0px;', 'class' => 'm-t-40')); ?>
                            <input type="hidden" id="band" name="band" value="save">
                            <input type="hidden" id="idhorario" name="idhorario" value="">
                            <div class="row">
                                <div class="form-group col-lg-8 col-sm-12">
                                    <h5>Descripción: <span class="text-danger">*</span></h5>
                                    <div class="controls">
                                        <input type="text" id="descripcion" name="descripcion" class="form-control" required="" placeholder="desayuno, almuerzo, cena" data-validation-required-message="Este campo es requerido">
                                        <div class="help-block"></div>
                                    </div>
                                </div>
                                <div class="form-group col-lg-4 col-sm-12">
                                    <h5>Monto: <span class="text-danger">*</span></h5>
                                    <div class="input-group">
                                        <div class="input-group-addon"><i class="fa fa-dollar"></i></div>
                                        <input type="number" id="monto" name="monto" class="form-control" required="" placeholder="0.00" data-validation-required-message="Este campo es requerido" min="0.01" step="0.01">
                                    <div class="help-block"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-lg-6">
                                    <h5>Hora inicio: <span class="text-danger">*</span></h5>
                                    <div class="controls">
                                        <input type="time" id="hora_inicio" name="hora_inicio" class="form-control" required="" placeholder="desayuno, almuerzo, cena" data-validation-required-message="Este campo es requerido">
                                        <div class="help-block"></div>
                                    </div>
                                </div>
                                <div class="form-group col-lg-6">
                                    <h5>Hora fin: <span class="text-danger">*</span></h5>
                                    <div class="controls">
                                        <input type="time" id="hora_fin" name="hora_fin" class="form-control" required="" placeholder="desayuno, almuerzo, cena" data-validation-required-message="Este campo es requerido">
                                        <div class="help-block"></div>
                                    </div>
                                </div>
                            </div>
                            <button id="submit" type="submit" style="display: none;"></button>
                            <div align="right" id="btnadd">
                                <button type="submit" class="btn waves-effect waves-light btn-success2"><i class="mdi mdi-plus"></i> Guardar</button>
                            </div>
                            <div align="right" id="btnedit" style="display: none;">
                                <button type="button" onclick="editar_horario(this)" class="btn waves-effect waves-light btn-info"><i class="mdi mdi-pencil"></i> Editar</button>
                                <button type="button" onclick="eliminar_horario(this)" class="btn waves-effect waves-light btn-danger"><i class="mdi mdi-window-close"></i> Eliminar</button>
                            </div>

                        <?php echo form_close(); ?>
                    </div>
                </div>
            </div>
            <div class="col-lg-1"></div>
            <!-- ============================================================== -->
            <!-- Fin del FORMULARIO de gestión -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Inicio de la TABLA -->
            <!-- ============================================================== -->
            <div class="col-lg-12" id="cnt-tabla">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title m-b-0">Listado de viáticos</h4>
                    </div>
                    <div class="card-body b-t" style="padding-top: 7px;">
                        <div class="pull-right">
                            <button type="button" onclick="cambiar_nuevo();" class="btn btn-rounded btn-success2"><span class="mdi mdi-plus"></span> Nuevo registro</button>
                        </div>
                        <div class="table-responsive">
                            <table id="myTable" class="table table-bordered">
                                <thead class="bg-info text-white">
                                    <tr>
                                        <th>#</th>
                                        <th>Descripción</th>
                                        <th>Monto</th>
                                        <th>Inicio</th>
                                        <th>Fin</th>
                                        <th>(*)</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <?php 
                                    if(!empty($horarios)){
                                        foreach ($horarios->result() as $fila) {
                                           echo "<tr>";
                                           echo "<td>".$fila->id_horario_viatico."</td>";
                                           echo "<td>".$fila->descripcion."</td>";
                                           echo "<td>$ ".number_format($fila->monto,2)."</td>";
                                           echo "<td>".date("h:i A",strtotime($fila->hora_inicio))."</td>";
                                           echo "<td>".date("h:i A",strtotime($fila->hora_fin))."</td>";
                                           
                                           $array = array($fila->id_horario_viatico, $fila->descripcion, date("H:i",strtotime($fila->hora_inicio)), date("H:i",strtotime($fila->hora_fin)), number_format($fila->monto,2));
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
            </div>
            <!-- ============================================================== -->
            <!-- Fin de la TABLA -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- Fin CUERPO DE LA SECCIÓN -->
        <!-- ============================================================== -->
    </div> 
</div>
<!-- ============================================================== -->
<!-- Fin de DIV de inicio (ENVOLTURA) -->
<!-- ============================================================== -->

<script>
    $(document).ready(function() {
        $('#myTable').DataTable();
    });
    
$(function() {
    $('#notificacion').click(function(){
        swal({   
            title: "!Éxito!",   
            text: "<?php echo $notificacion; ?>.", 
            type: "success",
            //timer: 2000,   
            showConfirmButton: true 
        });
    });
});

</script>