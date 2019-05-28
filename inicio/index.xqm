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
  %rest:path("inicio")
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
            <a href="/formula3"><li>Formula3</li></a>
            <a href="/nascar"><li>Nascar</li></a>
            <a href="/audi"><li>Audi</li></a>
            <a href="/noticias"><li> Noticias generales</li></a>
        </ul>
    </div>
	
	
	
	<div id="contenedor">

		<div id="principal">
			<h1>Inicio</h1>
			<div>  {page:formula1()} </div>
			<div>  {page:formula2()} </div>
			<div>  {page:nascar()} </div>
			<div>  {page:noticiasGenerales()} </div>
		</div>
		
	</div>

	<footer>  Autores: Asier Salicio, Lander Arellano, Miguel Lopez
	<br/> Email: mundo.motor@gmail.com
	<br/> Fecha de creación: 23/5/2019
	</footer>
  
    </body>
  </html>
  
};

 declare function page:formula1(){
  
  let $doc := doc ("http://www.f1latam.com/rss/rss.php")
  
  for $item in $doc//item[1]

  return
  
  <a href="{$item/link/text()}" class="enlaceNoticia"><div class="noticia"> 
  
    <h2 class="titular">{$item/title/text()}</h2>  
    
    <p class="fecha">Fecha:  {$item/pubDate/text()}</p>
    
    <p class="descripcion"> {$item/description/text()}</p> 
    
  
  </div></a>
  
};

declare function page:formula2(){
  
  let $doc := doc ("https://www.autosport.com/rss/feed/f3")
  
  for $item in $doc//item[1]

  return
  
  <a href="{$item/link/text()}" class="enlaceNoticia"><div class="noticia"> 
  
    <h2 class="titular">{$item/title/text()}</h2>  
    
    <p class="fecha">Fecha:  {$item/pubDate/text()}</p>
    
    <p class="descripcion"> {$item/description/text()}</p>  
    
  
  </div></a>

};

declare function page:nascar(){
  
  let $doc := doc ("https://www.autosport.com/rss/feed/nascar")
  
  for $item in $doc//item[1]

  return
  
  <a href="{$item/link/text()}" class="enlaceNoticia"><div class="noticia"> 
  
    <h2 class="titular">{$item/title/text()}</h2>      
    
    <p class="fecha">Fecha:  {$item/pubDate/text()}</p>
    
    <p class="descripcion"> {$item/description/text()}</p> 
    
  
  </div></a>

};

declare function page:noticiasGenerales(){
  
  let $doc := doc ("https://elcomercio.pe/feed/ruedas-tuercas")
  
  for $item in $doc//item[1]

  return
  
  <a href="{$item/link/text()}" class="enlaceNoticia"><div class="noticia"> 
  
    <h2 class="titular">{$item/title/text()}</h2>      
    
    <p class="fecha">Fecha:  {$item/pubDate/text()}</p>
    
    <p class="descripcion"> {$item/description/text()}</p> 
    
  
  </div></a>
  
};