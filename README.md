# Regular Expressions en PL/SQL Oracle, parte II

En este post anterior mostré ejemplos de búsqueda con las funciones regexp_like y regexp_instr.

A continuación mostrare ejemplos de las funciones regexp_substr y regexp_replace respectivamente.

Como primer ejemplo de la función regexp_substr, obtendré dos subcadenas (substring), una de la columna MEMBERSHIP_NAME donde el carácter a se repita dos veces en cada registro y otra de la columna MEMBERSHIP_DUE en donde la cantidad comience con un dígito del 1 al 6 y después uno o más dígitos que se repitan.


Como segundo ejemplo de la función regexp_substr obtendré un substring de la columna MEMBERSHIP_DATE cuyos registros terminen con los dígitos del 1 al 6 repetidos una o dos veces.



Como primer ejemplo de la función regexp_replace buscaré dentro de la concatenación de las columnas MEMBERSHIP_NAME y MEMBERSHIP_LASTNAME los registros que tengan un carácter o repetido a partir de la posición 4 y lo sustituiré por la cadena (**found**).


Como último ejemplo ejecutamos la función regexp_replace en un texto y reemplazamos la palabra ‘fox’ por la palabra ‘SUPER CAT’ a partir de la posición 1.
