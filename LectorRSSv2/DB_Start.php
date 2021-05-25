<?php

                echo '<div class="fondo">';
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
        

