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
      
			<div class="logo">
                <p class="logoP2">M<span class="logoP4">o</span>t<span class="logoP4">o</span>r</p>
                <p class="logoP1">Mund<span class="logoP4">o</span></p>
                <img class="logoP3" src="static/carreteraLogo.png"/>
            </div>
      
  </header>
  
        <div id="links">
        <ul>
            <li>Inicio</li>
            <a href="/formula1"><li>Formula1</li></a>
            <a href="/formula2"><li>Formula2</li></a>
            <a href="/nascar"><li>Nascar</li></a>
            <a href="/audi"><li>Audi</li></a>
            <a href="/noticias"><li> Noticias generales</li></a>
        </ul>
    </div>
	
	
	
	<div id="contenedor">

		<div id="principal">
			<h1>Inicio</h1>
			<div> </div>
		</div>
		
	</div>

	<footer>  Autores: Asier Salicio, Lander Arellano, Miguel Lopez
	<br/> Email: mundo.motor@gmail.com
	<br/> Fecha de creación: 23/5/2019
	</footer>
  
    </body>
  </html>
  
  
  
};