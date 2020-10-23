<?php
$conexion = mysqli_connect("localhost", "root", "", "hosp");
if (!$conexion) {
    echo "No conectado";
}else{
    echo "Conectado";
}
?>