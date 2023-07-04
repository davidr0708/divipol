<?php
    include("modelo/conexion.php");
    $sql = "DELETE FROM `divipol`;";
            $result = mysqli_query($conexion, $sql);
    ?>