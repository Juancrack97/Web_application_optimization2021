<?php

include("DB_Define.php");

$orden = $_GET['ordenar'];
    if($orden === "Titulo"){
        $sql = "SELECT ID, Titulo, Descripcion, Categoria, Link, Fecha FROM entradas ORDER BY Titulo";
        $resultado = $conexion->query($sql);
    }
    if($orden === "Fecha"){
        $sql = "SELECT ID, Titulo, Descripcion, Categoria, Link, Fecha FROM entradas ORDER BY Fecha DESC";
        $resultado = $conexion->query($sql);
    }
   
include("DB_Start.php");
    
  if ($resultado->num_rows > 0) {
  // output data of each row
  while($row = $resultado->fetch_assoc()) {
    echo "<br> id: ". $row["ID"]. " - Titulo: ". $row["Titulo"]. $row["Descripcion"] . $row["Categoria"] . $row["Link"] . $row["Fecha"] ."<br>";
  }
  
} else {
  echo "0 results";
}
    

   

//Cierra la conexion a la BD
@mysqli_close();
//header("Location: index.php");
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

