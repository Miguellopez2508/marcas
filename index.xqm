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
        
      
  
    <div class="height100"></div>
	<div id="panelInicio">
        <a href="/inicio">Entrar en el sitio</a>
    </div>
    <div class="height100"></div>
  
    </body>
  </html>
  
};

 declare function page:formula1(){
  
  let $doc := doc ("http://www.f1latam.com/rss/rss.php")
  
  for $item in $doc//item[1]

  return
  
  <p> 
  
    <h1> {$item/title/text()} </h1> <br/>  
    
    Fecha: {$item/pubDate/text()} <br/>
    
    <h2> {$item/description/text()}</h2> 
    
    <a href="{$item/guid/text()}"> más info... </a> 
    
  
  </p> 
  
};

declare function page:formula2(){
  
  let $doc := doc ("https://www.autosport.com/rss/feed/f3")
  
  for $item in $doc//item[1]

  return
  
  <p> 
  
    <h1> {$item/title/text()} </h1> <br/>  
    
    Fecha: {$item/pubDate/text()} <br/>
    
    <h2> {$item/description/text()}</h2> 
    
    <a href="{$item/guid/text()}"> más info... </a> 
    
  
  </p>

};

declare function page:nascar(){
  
  let $doc := doc ("https://www.autosport.com/rss/feed/nascar")
  
  for $item in $doc//item[1]

  return
  
  <p> 
  
    <h1> {$item/title/text()} </h1> <br/>  
    
    Fecha: {$item/pubDate/text()} <br/>
    
    <h2> {$item/description/text()}</h2> 
    
    <a href="{$item/guid/text()}"> más info... </a> 
    
  
  </p>

};

declare function page:noticiasGenerales(){
  
  let $doc := doc ("https://elcomercio.pe/feed/ruedas-tuercas")
  
  for $item in $doc//item[1]

  return
  
  <p> 
  
    <h1> {$item/title/text()} </h1> <br/>  
    
    Fecha: {$item/pubDate/text()} <br/>
    
    <h2> {$item/description/text()}</h2> 
    
    <a href="{$item/link/text()}"> mas info... </a> 
    
  
  </p>
  
};