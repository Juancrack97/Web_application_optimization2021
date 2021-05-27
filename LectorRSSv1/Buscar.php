<html>
<head>
        <LINK REL='preload' HREF="css/style.css" TYPE="text/css" MEDIA=screen>
        <link rel="preload" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        
     <div class="jumbotron" id="elementoB">
            <form  method="post" name="formu" id="formu" class="formulario"  action="Buscar.php" >
                <p class="font-weight-bold">Buscar un artículo o entrada específica</p>
                <input type="search" id="search" class="form-control" placeholder="Buscar..." name="CONTENT" onkeyup="mostrarSugerencias(this.value)" size="50" /> 
                <input type="submit" class="mt-2" value="Buscar">
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
            if(mysqli_num_rows($resultado) == 1){
                echo '<br><br><p><h2 class="titulo ml-5">Se ha encontrado ' . mysqli_num_rows($resultado) . ' resultado </h2></p><br>';
            } else{
            echo '<br><br><p><h2 class="titulo ml-5">Se han encontrado ' . mysqli_num_rows($resultado) . ' resultados </h2></p><br>';
            }
            $textoingresado = '';
            echo '<div class="album py-5 bg-light">';
            echo '<div class="mx-5">';
            echo '<div class="row">';
            while($fila = mysqli_fetch_assoc($resultado)){ 
                $textoingresado .= '<div class="col-md-4"><div class="card mb-4 shadow-sm"><p class="ml-2 card-img-top" >' . $fila['Titulo'] . '</p> <div class="card-body"><p class="card-text">'. $fila['Descripcion'] .'</p><p class="card-text">Fecha de publicación: ' . $fila['Fecha']   ." - ". $fila['Categoria'] .'</p> </div></div></div>';    

	    }
	    echo  $textoingresado;
                echo '</div>';
                echo '</div>';
                echo '</div>';  
                
	  }else{
		echo "<h2 class='titulo ml-5'>No se encontraron resultados </h2>";	
	  }
          echo '<br><br><a href="index.php" class="margenes ml-5"><button class="btn btn-success">Volver al inicio</button></a><br><br>';
          
	  mysqli_close($conexion);
}

