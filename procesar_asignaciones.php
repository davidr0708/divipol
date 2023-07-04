<?php
// Archivo procesar.php

////composer install

// Configuración de conexión a la base de datos MySQL
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "divipol";

use \PhpOffice\PhpSpreadsheet\IOFactory;

try {
  // Conectarse a la base de datos
  $conn = new mysqli($servername, $username, $password, $dbname);
  if ($conn->connect_error) {
    die("Error de conexión a la base de datos: " . $conn->connect_error);
  }
  // Verificar si se envió un archivo
  if (isset($_FILES["archivo"]) && $_FILES["archivo"]["error"] == 0) {
    $archivo = $_FILES["archivo"]["tmp_name"];

    // Cargar el archivo Excel utilizando la biblioteca PhpSpreadsheet
    require 'vendor/autoload.php'; // Asegúrate de haber instalado la biblioteca PhpSpreadsheet mediante Composer

    $reader = IOFactory::createReaderForFile($archivo);
    $spreadsheet = $reader->load($archivo);
    $sheet = $spreadsheet->getActiveSheet();
    $count = 0;

    // Iterar sobre las filas del archivo Excel y guardar los datos en la base de datos
    foreach ($sheet->getRowIterator() as $row) {
      if ($count > 0) {
        // Leer los valores de cada celda en la fila
        $data = [];
        foreach ($row->getCellIterator() as $cell) {
          $data[] = $cell->getValue();
        }

        // Insertar los datos en la tabla de la base de datos
        $sql = "INSERT INTO asignaciones (c_dpto, mm, zz, pp, c_divipol, c_anexos, nro, codigo_pd_cad, departamento, municipio, puesto, mujeres, hombres, total, mesas, comuna, direccion, tipo_cad, clase, nombre_cad) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        $stmt = $conn->prepare($sql);
        $divipolNumber = $data[4];
        $stmt->bind_param("sssssssssssiiiisssss", $data[0], $data[1], $data[2], $data[3], $divipolNumber, $data[5], $data[6], $data[7], $data[8], $data[9], $data[10], $data[11], $data[12], $data[13], $data[14], $data[15], $data[16], $data[17], $data[18], $data[19]);
        $stmt->execute();


        $queryDivipol = "UPDATE `divipol` SET `tipo_cad`=?, `nombre_cad`=?, `estado`=? WHERE `c_divipol` = ?";
        $stmt2 = $conn->prepare($queryDivipol);
        $tipo_cad = $data[17];
        $nombre_cad = $data[19];
        $estado = 2;
        $c_divipol = $divipolNumber;
        $stmt2->bind_param("ssis", $tipo_cad, $nombre_cad, $estado, $c_divipol);
        $stmt2->execute();
      }

      $count++;
    }

    echo "Archivo cargado y datos guardados en la base de datos.";
  } else {
    echo "Error al cargar el archivo.";
  }

  $conn->close();
} catch (Exception $e) {
  echo 'Excepción capturada: ',  $e->getMessage(), "\n";
}
