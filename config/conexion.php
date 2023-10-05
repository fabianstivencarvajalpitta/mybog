<?php
session_start();
$conexion = mysqli_connect("localhost", "root", "", "mybog");

if (!$conexion) {
    die("Error de conexión: " . mysqli_connect_error());
}

?>
