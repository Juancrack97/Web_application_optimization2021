<?php
include("DB_Define.php");

//Lee el contenido del archivo XML para guardarlos en la base de datos
require_once 'simplepie-1.5/autoloader.php';
mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
if ($resultado = $conexion->query("SELECT link FROM feeds")) {
    while ($row = $resultado->fetch_assoc()) {

        $feed = new SimplePie();
        $feed->set_feed_url($row['link']);
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


    $resultado = $conexion->query("SELECT Count('Titulo') as total FROM entradas where Link='$Link'");
    while($row = $resultado->fetch_assoc())
     {
        $rowcount=$row['total'];
     } 
           
    if($rowcount==0){
        $tituloLimpio=mysqli_real_escape_string($conexion,$Titulo);
        $descLimpio=mysqli_real_escape_string($conexion,$Descripcion);
        $InsertEnt = "INSERT INTO entradas (Titulo,Descripcion,Categoria,Link,Fecha) VALUES ('$tituloLimpio','$descLimpio','$Categoria','$Link','$Fecha')";    
        mysqli_query($conexion, $InsertEnt);
    }

   
}
    
 } 
}

//Cierra la conexion a la BD
@mysqli_close();
header("Location: index.php");

?>