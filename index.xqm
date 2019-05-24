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
        
      
		
    <div class="height100">
		<div class="logo">
				<p class="logoP2">M<span class="logoP4">o</span>t<span class="logoP4">o</span>r</p>
				<p class="logoP1">Mund<span class="logoP4">o</span></p>
		</div>
	</div>
	<div id="panelInicio">
		<p id="textoBienvenida">Bienvenido a Mundo motor</p>
        <a href="/inicio">Entrar en el sitio</a>
    </div>
    <div class="height100"></div>
  
    </body>
  </html>
  
};