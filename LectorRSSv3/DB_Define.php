<?php
$usuario = "root";
$contrasena = "";
$servidor = "localhost";
$basededatos = "rssdatabase";
$conexion = new mysqli($servidor, $usuario, $contrasena, $basededatos);

$conexion->set_charset("utf8");
?>

