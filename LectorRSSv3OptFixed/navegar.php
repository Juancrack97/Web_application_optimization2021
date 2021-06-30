<!DOCTYPE html>
<html lang="en">

<?php 
    include("DB_Define.php");
?>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description">
	<meta name="author">
    <title>Explorador de noticias</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link href="css/heroic-features.css" rel="stylesheet">
    <link REL=StyleSheet HREF="css/style.css" TYPE="text/css" MEDIA=screen>
    
    <title>RSS Feed Reader</title>
        
    <div class="encabezado">
        <img src="img/banner.png" style="max-width:100%;width:auto;height:auto;">
        <h1 id="titulo" style="color:white">Consultorio RSS</h1>
        <h2>Noticias anteriores</h2>
    </div>
    
</head>
<body style="background-image: url('img/fondo.jpg'); background-attachment: fixed;">
    <div class="accordion" id="accordionbyyear">
    <?php 
    
    $sql = "SELECT ID, Titulo, Descripcion, Categoria, Link, Fecha FROM entradas ORDER BY Fecha DESC";
    $resultado = $conexion->query($sql);
    $nextyear = 9999;
    $bandera = 0; //bandera que indica si es el primer accordion para cerrarlo con un div
    $contador = 0; //Contador de headers y collapse
    
    while ($row = $resultado->fetch_assoc()) {
        $contador++;
        $currentyear = date('Y',strtotime($row["Fecha"])); //Obtiene el ano de la fecha de la fila
            if($nextyear != $currentyear){
                if($bandera == 1){
                    echo '</div>';    
                }
                
                echo '<div class="accordion-item">';
                echo '<h2 class="accordion-header" id="heading'.$contador.'">';
                echo '<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse'.$contador.'" aria-expanded="true" aria-controls="collapse'.$contador.'">';
                echo $currentyear;    
                echo '</button>';
                echo '</h2>';  
                
                $bandera = 1; //Una vez creado el 1er accordion, cuando llegue al proximo se cerrara el anterior
            }
        
            echo '<div id="collapse'.$contador.'" class="accordion-collapse collapse show" aria-labelledby="heading'.$contador.'" data-bs-parent="#accordionbyyear">';
            echo '<div class="accordion-body">';
            echo '<a class="ml-2 card-img-top" href="'. $row['Link'] . '">' . $row['Titulo'] . '</a>';
            echo '<p class="card-text">'. $row['Descripcion'] .'</p>';
            echo '<p class="card-text">Fecha de publicación: ' . $row['Fecha'] . '</p>';
            echo '</div>';
            echo '</div>';   
            $nextyear = $currentyear;
    }
    
    ?>
     
    </div>
    
    <br><br><a href="index.php" class="margenes ml-5"><button class="btn btn-success">Volver al inicio</button></a><br><br>
    <script defer src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
    <script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
    
</body>
</html>