<html>
    <head>
        <title>RSS Feed Reader</title>
        
        <div>
            <h1>Consultorio RSS</h1>
	</div>
        
        <div class="jumbotron" id="elemento">
            <form  method="post" name="formu" id="formu" class="formulario"  action="Buscar.php" >
                <p>Buscar un artículo o entrada específica</p>
                <input type="search" id="search" class="form-control" placeholder="Buscar..." name="CONTENT" onkeyup="mostrarSugerencias(this.value)" size="50" /> 
                <input type="submit" value="Buscar">
                <div id ="mostrar-sugerencias" class="col-sm-5" ></div>
            </form>      
        </div>
    
        <div class="jumbotron" id="elemento2">
            
            <form action="Guardar.php" method="post">
                <p>Agregar nuevo feed</p>
		<input type="text" placeholder="Ingrese una dirección URL válida de un feed RSS" name="URLRSS" size="50">
		<input type="submit" value="Agregar">
            </form>
        </div>   
	
    
        <h3>Noticias de ultimo momento</h3>
    </head>
    <body>
        <?php
        /*Esto solo imprime el contenido de los archivos xml, debe actualzarse
        este contenido para que lea el contenido de la BD y los ordene 
        cronologicamente */
        
        //Feed URLs
        $feeds = array(
            "https://www.reforma.com/rss/ciudad.xml",
            "https://www.techrepublic.com/rssfeeds/articles/",
            "http://archivo.eluniversal.com.mx/rss/universalmxm.xml"
        );
        
        //Read each feed's items
        $entries = array();
        foreach($feeds as $feed) {
            $xml = simplexml_load_file($feed);
            $entries = array_merge($entries, $xml->xpath("//item")); 
        }
        
        //Sort feed entries by pubDate
        usort($entries, function ($feed1, $feed2) {
            return strtotime($feed2->pubDate) - strtotime($feed1->pubDate);
        });
        
        ?>
        
        <ul><?php
        //Print all the entries
        foreach($entries as $entry){
            ?>
            <li><a href="<?= $entry->link ?>"><?= $entry->title ?></a> (<?= parse_url($entry->link)['host'] ?>)
            <p><?= strftime('%m/%d/%Y %I:%M %p', strtotime($entry->pubDate)) ?></p>
            <p><?= $entry->description ?></p></li>
            <p> __________________________________________________________</p>
            <?php
        }
        ?>
            
            
            
        </ul>
    </body>
</html>
