<html>
    <head>
    <LINK REL=StyleSheet HREF="css/style.css" TYPE="text/css" MEDIA=screen>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="CheckActions.js"></script>
        <title>RSS Feed Reader</title>
        
        <div class="encabezado">
            <img src="img/banner.png" id="banner" style="max-width:100%;width:auto;height:auto;">
            <h1 id="titulo" style="color:white">Consultorio RSS</h1>
	</div>
        
        <div class="d-flex justify-content-center">
        
            <div class="jumbotron" id="elemento">
                <form method="post" name="formu" id="formu" class="formulario"  action="index.php" >
                    <p class="font-weight-bold">Buscar un artículo o entrada específica</p>
                    <input type="search" id="search" class="form-control" placeholder="Buscar..." name="CONTENT" onkeyup="mostrarSugerencias(this.value)" size="50" /> 
                    <input type="submit"  class="mt-2 fa-buscar" value="      Buscar " name="botonBusq">
                    <div id ="mostrar-sugerencias" class="col-sm-5" ></div>
                </form>
                <form action="navegar.php" method="post">
                    <input type="submit"  class="mt-2 fa-explorar" value="Explorar todas las noticias" name="botonNav">
                </form>
            </div>

            <div class="jumbotron" id="elemento2">
                
                <form action="Guardar.php" method="post">
                    <p class="font-weight-bold">Agregar nuevo feed</p>
                    <input type="text" class="form-control" placeholder="Ingrese una dirección URL válida de un feed RSS" name="URLRSS" size="50">
                    <input type="submit" class="mt-2 fa-agregar"  value=" Agregar">
                </form>
            </div>   

            <div class="jumbotron" id="elemento3">
            <form action="actualizar.php" method="post">
            <input type="submit" class="mt-5 button fa-actualizar" name="button1"
                     onclick="Check()" value="       Actualizar" />
            </form>
            <form action="ordenar.php" method="post">
            <button class="dropdown-toggle fa-ordenar" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                   Ordenar por
            </button>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a class="dropdown-item" name="sortElement" href="index.php?ordenar=Fecha">Fecha de publicación</a>
                <a class="dropdown-item" name="sortElement" href="index.php?ordenar=Titulo">Nombre del título</a>
            </div>
            </form>
            </div>
            
        </div>   
	
    
        
    </head>
    <style>
        body {
            background-image: url("img/fondo.jpg");
            background-repeat: repeat;
        }
    </style>
    <body>
        <div id="cuerpo" class="fondo">
      
            
            <?php
            
            //Conexion a la BD
            include("DB_Define.php");
            $resultado = $conexion->query("SELECT Titulo,Descripcion,Categoria,Link,Fecha,YEAR(entradas.Fecha) as year ,MONTH(entradas.Fecha) as month , DAY(entradas.Fecha) as day FROM entradas ORDER BY Fecha DESC");   
            //Se agregan condiciones si se realizan las acciones de busqueda o de ordenamiento
            
            error_reporting(0);
            
            if ($_GET['ordenar']=='Fecha'){
                include("ordenar.php");
            }
            
            else if ($_GET['ordenar']=='Titulo'){
                include("ordenar.php");
            }
            else if ($_GET['ordenar']=='dia'){
                include("ordenar.php");
            }
            else if ($_GET['ordenar']=='mes'){
                include("ordenar.php");
            }
            else if ($_GET['ordenar']=='anio'){
                include("ordenar.php");
            }
            
            else if (isset($_POST["botonBusq"])) {           
                include("Buscar.php");
            }
            
            else {
                echo '<h3 class=ml-5">Noticias de último momento</h3>';
                include("DB_Start.php");
            }
             
            ?>

        </div>     
    </body>
    <footr>
      <div class="footer">
               <p style="color:white">© Copyright 2021 - Juan Durán, Juan Carlos & José Cetina, todos los derechos reservados </p>
      </div>
   </footr>
</html>