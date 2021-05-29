<?php

echo '<script src="./handleVisor.js"></script>';
                echo '<div class="fondo">';
                echo '<div class="mx-5">';
                echo '<div class="row">';
                $listaanios = array();
                $listames = array();
                $listadias = array();
                
             while ($row = $resultado->fetch_assoc()) {
                array_push($listaanios,$row['year']);
                array_push($listames,$row['month']);
                array_push($listadias,$row['day']);
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
            $cleananios= array_unique($listaanios);
            $cleanmes= array_unique($listames);
            $cleandias= array_unique($listadias);
            
           // print_r($listadias);
    
           echo '<div class="col-md-4">';
                echo '<div class="col-md-4 dropdown">';
                echo '<button onclick="myFunction(1)" class="dropbtn">Dia</button>';
                echo '<div id="myDropdown" class="dropdown-content">';
                foreach ($cleandias as $key => $value) {
                   echo '<a href=index.php?ordenar=dia&valor=' . $value . '>'.$value . '</a>';
                }
               
                echo '</div>';
                echo '</div>';
                echo '<div class="col-md-4 dropdown">';
                echo '<button onclick="myFunction(2)" class="dropbtn">Mes</button>';
                echo '<div id="myDropdown2" class="dropdown-content">';
                foreach ($cleanmes as $key => $value) {
                   echo '<a href=index.php?ordenar=mes&valor=' . $value . '>'.$value . '</a>';
                }
               
                echo '</div>';
                echo '</div>';
                echo '<div class="col-md-4 dropdown">';
                echo '<button onclick="myFunction(3)" class="dropbtn">Año</button>';
                echo '<div id="myDropdown3" class="dropdown-content">';
                foreach ($cleananios as $key => $value) {
                   echo '<a href=index.php?ordenar=anio&valor=' . $value . '>'.$value . '</a>';
                }
               
                echo '</div>';
                echo '</div>';
                echo '</div>';
           
                

                
            
                echo '</div>';
                echo '</div>';
                echo '</div>';        
        

