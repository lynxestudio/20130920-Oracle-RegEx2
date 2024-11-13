# Regular Expressions en PL/SQL Oracle, parte II

<p align="justify">
Estos ejemplos son la segunda parte de este <a href="https://github.com/lynxestudio/20130916-Oracle-RegEx">repositorio</a> anterior mostré ejemplos de búsqueda con las funciones <i>regexp_like</i> y  <i>regexp_instr</i>.
</p>
<p>
A continuación mostrare ejemplos de las funciones <b>regexp_substr</b> y <b>regexp_replace</b> respectivamente.
</p>
<p align="justify">
Como primer ejemplo de la función <b>regexp_substr</b>, obtendré dos subcadenas (substring), una de la columna MEMBERSHIP_NAME donde el carácter <i>a</i> se repita dos veces en cada registro y otra de la columna MEMBERSHIP_DUE en donde la cantidad comience con un dígito del 1 al 6 y después uno o más dígitos que se repitan.</p>
<div>
<pre>
--First example using regexp_substr
SELECT 
MEMBERSHIP_NAME
,regexp_substr(MEMBERSHIP_NAME,'[a].{2}') AS SUBMEMBERSHIP_NAME 
,MEMBERSHIP_LASTNAME
,regexp_substr(MEMBERSHIP_DUE,'^[1-6]\d+') AS SUBMEMBERSHIP_DUE
,MEMBERSHIP_DUE
FROM membership
</pre>
</div><br>
<div>
<IMG src="images/fig8.png">
</div><br>
<p align="justify">Como segundo ejemplo de la función <b>regexp_substr</b> obtendré un substring de la columna MEMBERSHIP_DATE cuyos registros terminen con los dígitos del 1 al 6 repetidos una o dos veces.</p>
<div>
<pre>
SELECT 
MEMBERSHIP_NAME
,MEMBERSHIP_LASTNAME
,MEMBERSHIP_DUE
,MEMBERSHIP_DATE
,regexp_substr(MEMBERSHIP_DATE,'[1-6]{1,2}$') AS SUBMEMBERSHIP_DATE
FROM membership
</pre>
</div><br>
<div>
<IMG src="images/fig9.png">
</div><br>
<p align="justify">Como primer ejemplo de la función <b>regexp_replace</b> buscaré dentro de la concatenación de las columnas MEMBERSHIP_NAME y MEMBERSHIP_LASTNAME los registros que tengan un carácter <i>o</i> repetido a partir de la posición 4  y lo sustituiré por la cadena (**found**).</p>
<div>
<pre>
SELECT 
MEMBERSHIP_NAME || '-' || MEMBERSHIP_LASTNAME
,regexp_replace(MEMBERSHIP_NAME || '-' || MEMBERSHIP_LASTNAME,'o+',' (**found**) ',4) AS RESULT
FROM membership
</pre>
</div><br>
<div>
<IMG src="images/fig10.png">
</div><br>
<p align="justify">Como último ejemplo ejecutamos la función <b>regexp_replace</b> en un texto y reemplazamos la palabra ‘fox’ por la palabra ‘SUPER CAT’ a partir de la posición 1.</p>
<div>
<pre>
SELECT  
regexp_replace('The white fox jump over the lazy dog','fox','SUPER CAT',1) AS RESULT 
FROM dual
</pre>
</div><br>
<div>
<IMG src="images/fig11.png">
</div>
