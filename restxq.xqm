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
  
  <section> 
	
	
	
	<div id="contenedor">

		<div id="lateral">
			<p>Aquí ira el contenido alineado a la izquierda</p>
		</div>

		<div id="principal">
			<p>NOTICIAS PRINCIPALES</p>
      
		</div>
		<div> {page:nombreFuncion()}</div>
	</div>

	
   </section>

	<footer>  Autores: Asier Salicio, Lander Arellano, Miguel Lopez
	<br> Email: mundo.motor@gmail.com </br>
	<br> Fecha de creación: 23/5/2019  </br>
	</footer>
  
    </body>
  </html>
};

declare function page:nombreFuncion(){
  
  let $doc := doc ("https://es.digitaltrends.com/videojuego/feed")
  for $item in $doc //item
  return
  <p> {($item//title/text())} </p>
  
};