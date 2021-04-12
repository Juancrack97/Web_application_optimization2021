<?php

if(!isset($_SESSION)){ 
    session_start(); 
} 
@$_SESSION['url'] = $_POST['URLRSS'];

//Llama al script quien se encarga de la conexion a la base de datos
include("DB_Define.php");

//Lee el contenido del archivo XML para guardarlos en la base de datos
require_once 'simplepie-1.5/autoloader.php';
$url = $_SESSION['url'];
$feed = new SimplePie();
$feed->set_feed_url($url);
$feed->init();
$itemQty = $feed->get_item_quantity();

//Lee cada componente de cada entrada del feed y lo va anexando a la base de datos
for ($i = 0; $i < $itemQty; $i++) {
    $NoArticulo = $feed->get_item($i);
    $Titulo = htmlspecialchars_decode($NoArticulo->get_title());
    $Descripcion = htmlspecialchars_decode($NoArticulo->get_description());
    $Categoria = htmlspecialchars_decode($NoArticulo->get_category());
    $Link = htmlspecialchars_decode($NoArticulo->get_link());
    $Fecha = htmlspecialchars_decode($NoArticulo->get_date('Y-m-d H:i:s'));
    echo $Titulo. "<br>";
    echo $Categoria. "<br>";
    echo $Descripcion. "<br>";
    echo $Fecha. "<br>";
    echo $Link. "<br>";
    
    $InsertEnt = "INSERT INTO entradas (Titulo,Descripcion,Categoria,Link,Fecha) 
    VALUES ('$Titulo','$Descripcion','$Categoria','$Link','$Fecha')";    
    mysqli_query($conexion, $InsertEnt);
}
$InsertFeed = "INSERT INTO feeds (link) 
    VALUES ('$url')";    
    mysqli_query($conexion, $InsertFeed);

//Cierra la conexion a la BD
@mysqli_close();
session_destroy();
header("Location: index.php");
?>