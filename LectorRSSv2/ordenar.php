<?php

include("DB_Define.php");

$orden = $_GET['ordenar'];
    if($orden === "Titulo"){
        $sql = "SELECT ID, Titulo, Descripcion, Categoria, Link, Fecha,YEAR(entradas.Fecha) as year ,MONTH(entradas.Fecha) as month , DAY(entradas.Fecha) as day FROM entradas ORDER BY Titulo";
        $resultado = $conexion->query($sql);
    }
    if($orden === "Fecha"){
        $sql = "SELECT ID, Titulo, Descripcion, Categoria, Link, Fecha,YEAR(entradas.Fecha) as year ,MONTH(entradas.Fecha) as month , DAY(entradas.Fecha) as day FROM entradas ORDER BY Fecha DESC";
        $resultado = $conexion->query($sql);
    }
    if($orden=== 'dia'){
      $valor=$_GET["valor"];
      $sql = "SELECT ID, Titulo, Descripcion, Categoria, Link, Fecha,YEAR(entradas.Fecha) as year ,MONTH(entradas.Fecha) as month , DAY(entradas.Fecha) as day FROM entradas where DAY(Fecha)='$valor' ORDER BY Fecha DESC";
        $resultado = $conexion->query($sql);
    }
    if($orden=== 'mes'){
      $valor=$_GET["valor"];
      $sql = "SELECT ID, Titulo, Descripcion, Categoria, Link, Fecha,YEAR(entradas.Fecha) as year ,MONTH(entradas.Fecha) as month , DAY(entradas.Fecha) as day FROM entradas where MONTH(Fecha)='$valor' ORDER BY Fecha DESC";
        $resultado = $conexion->query($sql);
    }
    if($orden=== 'anio'){
      $valor=$_GET["valor"];
      $sql = "SELECT ID, Titulo, Descripcion, Categoria, Link, Fecha,YEAR(entradas.Fecha) as year ,MONTH(entradas.Fecha) as month , DAY(entradas.Fecha) as day FROM entradas where YEAR(Fecha)='$valor' ORDER BY Fecha DESC";
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

