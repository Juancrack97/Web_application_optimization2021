<html>
<head>

     <div class="jumbotron" id="elementoB">
            <form  method="post" name="formu" id="formu" class="formulario"  action="Buscar.php" >
                <p>Buscar un artículo o entrada específica</p>
                <input type="search" id="search" class="form-control" placeholder="Buscar..." name="CONTENT" onkeyup="mostrarSugerencias(this.value)" size="50" /> 
                <input type="submit" value="Buscar">
                <div id ="mostrar-sugerencias" class="col-sm-5" ></div>
            </form>      
      </div>
</head>
<body> 
</body>

<?php
if(!isset($_SESSION)){ 
    session_start(); 
}

$textoingresado= $_POST['CONTENT'];

if(!(strlen($textoingresado)>0)){
    //No hace nada
}
else {
    // include("index.php");
    include("DB_Define.php");
    $sql = "SELECT * FROM entradas WHERE Titulo LIKE '%" .$textoingresado. "%' 
    or Descripcion LIKE '%" .$textoingresado. "%' ORDER BY Fecha desc LIMIT 10";	  
    $resultado = mysqli_query($conexion, $sql);
    
     if (@mysqli_num_rows($resultado) > 0){ 
	    // Se recoge tanto el número de resultados como los resultados mismos 
            $entradas = '<br><br><p><h2 class="titulo">Se han encontrado ' . mysqli_num_rows($resultado) . ' resultados </h2></p><br>';
            $textoingresado = '';
            while($fila = mysqli_fetch_assoc($resultado)){ 
                $textoingresado .= '<div class="jumbotron noticia"><h3>'.$fila['Titulo'] . "</h3><hr>". $fila['Descripcion'] . "<br><br>" . $fila['Fecha']  ." - ". $fila['Categoria'] . "<br>" . "</div>	<br/><br/>";
	    }
	    echo $entradas . "<br/>" . $textoingresado;
                
	  }else{
		echo "No se encontraron resultados";	
	  }
          echo '<br><br><a href="index.php" class="margenes"><button class="btn btn-success">Volver al inicio</button></a><br><br>';
          
	  mysqli_close($conexion);
}

