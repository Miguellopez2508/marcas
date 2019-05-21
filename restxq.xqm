(:~
 : This module contains some basic examples for RESTXQ annotations.
 : @author BaseX Team
 :)
module namespace page = 'http://basex.org/modules/web-page';

(:~
 : Generates a welcome page.
 : @return HTML page
 :)
declare
  %rest:path("")
  %output:method("xhtml")
  %output:omit-xml-declaration("no")
  %output:doctype-public("-//W3C//DTD XHTML 1.0 Transitional//EN")
  %output:doctype-system("http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd")
function page:start(
) as element(Q{http://www.w3.org/1999/xhtml}html) {
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
      <title>BaseX HTTP Services</title>
      <link rel="stylesheet" type="text/css" href="static/estilos.css"/>
    </head>
    <body>
     	
  <header>  
			<p> Mundo Motor  </p> 
  </header>
  
        <div id="links">
        <ul>
            <li>Inicio</li>
            <li> <a href="/"> Formula1 </a></li>
            <li> <a href="/temp"> Audi </a></li>
            <li class="verde">Mundo electrico</li>
            
        </ul>
    </div>
	
	
	<div id="contenedor">

		<div id="principal">
			<h1>NOTICIAS PRINCIPALES</h1>
			<div> {page:formula1()}</div>
		</div>
		
	</div>

	<footer>  Autores: Asier Salicio, Lander Arellano, Miguel Lopez
	<br/> Email: mundo.motor@gmail.com
	<br/> Fecha de creación: 23/5/2019
	</footer>
  
    </body>
  </html>
};

declare function page:nombreFuncion(){
  
  let $doc := doc ("https://www.cochesyconcesionarios.com/rss/marcas/coches-kmcero.xml")
  for $item in $doc //item
  return
  <p> {($item//title/text())} </p>
  
};

declare function page:formula1(){
  
  let $doc := doc ("http://www.f1latam.com/rss/rss.php")
  
  for $item in $doc//item

  return
  
  <p> 
  
    <h1> {$item/title/text()} </h1> <br/>  
    
    Fecha: {$item/pubDate/text()} <br/>
    
    <h2> {$item/description/text()}</h2> 
    
    <a href="{$item/guid/text()}"> más info... </a> 
    
  
  </p>

  
};