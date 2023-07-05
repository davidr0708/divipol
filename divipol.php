<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Divipol</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <!-- DataTable-->
    <link href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/buttons/2.3.6/css/buttons.bootstrap5.min.css" rel="stylesheet" />
    <!--Bootstrap-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <!--Font Awesome-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />


    <!--Jquery-->
    <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
    <script>
        function validateStatus(id, value) {
            if (value == 2) {
                $('#' + id).css('background-color', '#33cabb');
            }

            else{
                $('#' + id).css('background-color', '#fa0b0b');
            }
        }
    </script>
</head>

<body>
    <?php
    include("modelo/conexion.php");
    ?>
    <nav class="navbar navbar-light navbar-expand-md bg-faded justify-content-center">
        <div class="container">
            <img src="images/logo.png" style="width: 15%;">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsingNavbar3">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="navbar-collapse collapse w-100" id="collapsingNavbar3">
                <ul class="navbar-nav w-100 justify-content-center">
                    <li class="nav-item active">
                        <a class="nav-link" href="divipol.php">Divipol</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="asignaciones.php">Asignación CAD & PD</a>
                    </li>
                    <div class="dropdown">
                        <button class="btn btn-success dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Importar
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="importar_divipol.php">Divipol</a>
                            <a class="dropdown-item" href="importar_asignaciones.php">Asignacion CAD & PD</a>
                        </div>
                    </div>
                </ul>
                <ul class="nav navbar-nav ms-auto w-100 justify-content-end">

                    <li class="nav-item">
                        <a class="nav-link" href="modelo/logout.php">Salir</a>
                    </li>
                </ul>
                <i class="fa-solid fa-right-from-bracket" style="color: #1ABC9C;"></i>
            </div>
        </div>
    </nav>

    <div class="container my-4">
        <div class="row">
            <div class="col-md-3" style="margin-left:90%">
                <form action="borrar.php" method="POST">
                    <input type="hidden" name="Delete_Divipol" id="delete" value="Borrar">
                    <button type="submit" class="btn btn-danger" style="cursor: pointer;">Borrar Base de Datos</button>
                </form>
            </div>
            <div class="col-md-10">
            </div>
        </div>
    
        <div class="row" style="margin-left:-110px">
        
            <table id="example" class="table table-striped">
                <thead>
                    <tr style="font-size: 11px;">
                        <th>DD</th>
                        <th>MM</th>
                        <th>ZZ</th>
                        <th>PP</th>
                        <th>CÓDIGO DIVIPOL</th>
                        <th>CÓDIGO ANEXOS</th>
                        <th>ACOPIO PADRE</th>
                        <th>TIPO CAD</th>
                        <th>NOMBRE CAD</th>
                        <th>DEPARTAMENTO</th>
                        <th>MUNICIPIO</th>
                        <th>PUESTO</th>
                        <th>MUJERES</th>
                        <th>HOMBRES</th>
                        <th>TOTAL</th>
                        <th>MESAS</th>
                        <th>COMUNA</th>
                        <th>DIRECCIÓN</th>
                        <th>ESTADO</th>
                        <th>ACCIÓN</th>
                    </tr>
                </thead>

                <?php
                $sql = "SELECT * from divipol";
                $result = mysqli_query($conexion, $sql);

                while ($mostrar = mysqli_fetch_array($result)) {
                ?>
                    <tr style="font-size: 11px;">
                        <td><?php echo $mostrar['dd'] ?></td>
                        <td><?php echo $mostrar['mm'] ?></td>
                        <td><?php echo $mostrar['zz'] ?></td>
                        <td><?php echo $mostrar['pp'] ?></td>
                        <td><?php echo $mostrar['c_divipol'] ?></td>
                        <td><?php echo $mostrar['c_anexos'] ?></td>
                        <td><?php echo $mostrar['acopio_padre'] ?></td>
                        <td><?php echo $mostrar['tipo_acopio'] ?></td>
                        <td><?php echo $mostrar['nombre_pd_cad'] ?></td>
                        <td><?php echo $mostrar['departamento'] ?></td>
                        <td><?php echo $mostrar['municipio'] ?></td>
                        <td><?php echo $mostrar['puesto'] ?></td>
                        <td><?php echo $mostrar['mujeres'] ?></td>
                        <td><?php echo $mostrar['hombres'] ?></td>
                        <td><?php echo $mostrar['total'] ?></td>
                        <td><?php echo $mostrar['mesas'] ?></td>
                        <td><?php echo $mostrar['comuna'] ?></td>
                        <td><?php echo $mostrar['direccion'] ?></td>
                        <td id="<?php echo $mostrar['c_divipol'] ?>">
                            <script>validateStatus('<?php echo $mostrar['c_divipol'] ?>', <?php echo $mostrar['estado'] ?>)</script>
                            <?php echo $mostrar['estado'] ?>
                        </td>
                        <td> 
                              <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#deleteChildresn<?php echo $dataCliente['id']; ?>">
                                  Eliminar
                              </button>
                            
                              <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#editChildresn<?php echo $dataCliente['id']; ?>">
                                  Modificar
                              </button>
                          </td>
                    </tr>
                            <!--Ventana Modal para Actualizar--->
                            <?php  include('editar.php'); ?>

                            <!--Ventana Modal para la Alerta de Eliminar--->
                            <?php include('eliminar.php'); ?>
                    
                <?php
                }
                ?>
                <tfoot>
                    <tr style="font-size: 11px;">
                        <th>DD</th>
                        <th>MM</th>
                        <th>ZZ</th>
                        <th>PP</th>
                        <th>CÓDIGO DIVIPOL</th>
                        <th>CÓDIGO ANEXOS</th>
                        <th>ACOPIO PADRE</th>
                        <th>TIPO CAD</th>
                        <th>NOMBRE CAD</th>
                        <th>DEPARTAMENTO</th>
                        <th>MUNICIPIO</th>
                        <th>PUESTO</th>
                        <th>MUJERES</th>
                        <th>HOMBRES</th>
                        <th>TOTAL</th>
                        <th>MESAS</th>
                        <th>COMUNA</th>
                        <th>DIRECCIÓN</th>
                        <th>ESTADO</th>
                        <th>ACCIÓN</th>
                    </tr>
                </tfoot>

            </table>
        </div>
    <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    ...
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
                </div>
            </div>
        </div>
    </div>


    <!-- DataTable-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.3.6/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.3.6/js/buttons.bootstrap5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.3.6/js/buttons.colVis.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.3.6/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.3.6/js/buttons.print.min.js"></script>

    <!--Bootstrap-->
    <script src="vendor/bootstrap/js/popper.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <script src="js/script.js"></script>

</body>

</html>