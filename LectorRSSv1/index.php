<html>
    <head>
    <LINK REL=StyleSheet HREF="css/style.css" TYPE="text/css" MEDIA=screen>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        
        <title>RSS Feed Reader</title>
        
        <div>
            <h1 class="text-center">Consultorio RSS</h1>
	    </div>
        
        <div class="d-flex justify-content-center">
        
            <div class="jumbotron" id="elemento">
                <form  method="post" name="formu" id="formu" class="formulario"  action="Buscar.php" >
                    <p class="font-weight-bold">Buscar un artículo o entrada específica</p>
                    <input type="search" id="search" class="form-control" placeholder="Buscar..." name="CONTENT" onkeyup="mostrarSugerencias(this.value)" size="50" /> 
                    <input type="submit"  class="mt-2 fa-buscar" value="Buscar">
                    <div id ="mostrar-sugerencias" class="col-sm-5" ></div>
                </form>      
            </div>

            <div class="jumbotron" id="elemento2">
                
                <form action="Guardar.php" method="post">
                    <p class="font-weight-bold">Agregar nuevo feed</p>
            <input type="text" class="form-control" placeholder="Ingrese una dirección URL válida de un feed RSS" name="URLRSS" size="50">
            <input type="submit" class="mt-2" value="Agregar">
                </form>
            </div>   

            <div class="jumbotron" id="elemento3">
            <form action="actualizar.php" method="post">
            <input type="submit" class="mt-5" name="button1"
                    class="button" value="Actualizar" />
            </div>
        </div>   
	
    
        <h3 class="ml-5">Noticias de ultimo momento</h3>
    </head>
    <body>

        <?php
        include("DB_Define.php");

         if ($resultado = $conexion->query("SELECT Titulo,Descripcion,Categoria,Link,Fecha FROM entradas ORDER BY Fecha DESC")) {
                echo '<div class="album py-5 bg-light">';
                echo '<div class="mx-5">';
                echo '<div class="row">';
            while ($row = $resultado->fetch_assoc()) {
                echo '<div class="col-md-4">';
                echo '<div class="card mb-4 shadow-sm">';
                echo '<a class="ml-2 card-img-top" href="'. $row['Link'] . '">' . $row['Titulo'] . '</a>';
                echo '<div class="card-body">';
                echo '<p class="card-text">'. $row['Descripcion'] .'</p>';
                echo '<p class="card-text">Fecha de publicación: ' . $row['Fecha'] . '</p>';
                echo '</div>';
                echo '</div>';
                echo '</div>';    
             
          } 
                echo '</div>';
                echo '</div>';
                echo '</div>';        
        }

        ?>
              
    </body>
</html>