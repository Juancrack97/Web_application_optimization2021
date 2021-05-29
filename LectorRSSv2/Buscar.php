<?php

$textoingresado= $_POST['CONTENT'];

if(!(strlen($textoingresado)>0)){
    //No hace nada
}
else {
    // include("index.php");
   // include("DB_Define.php");
    $sql = "SELECT * FROM entradas WHERE Titulo LIKE '%" .$textoingresado. "%' 
    or Descripcion LIKE '%" .$textoingresado. "%' ORDER BY Fecha desc LIMIT 10";	  
    $resultado = mysqli_query($conexion, $sql);
    
     if (@mysqli_num_rows($resultado) > 0){ 
	    // Se recoge tanto el número de resultados como los resultados mismos 
            if(mysqli_num_rows($resultado) == 1){
                echo '<br><br><p><h2 class="titulo ml-5">Se ha encontrado ' . mysqli_num_rows($resultado) . ' resultado </h2></p><br>';
            } else{
            echo '<br><p><h2 class="titulo ml-5">Se han encontrado ' . mysqli_num_rows($resultado) . ' resultados </h2></p><br>';
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

header("Location: index.php");