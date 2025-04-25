
# Comments Huerfanos (3.5 puntos)


Nos hemos dado cuenta de que en la Base de Datos hay muchos Comentarios huérfanos (cuyo usuario ha sido borrado) que no están marcados como tal y nos están dando problemas. Haz lo siguiente:

1. Explica porqué este error reduce la eficiencia de la base de datos *(1 puntos)*

2. Haz una consulta para encontrar todos los Comentarios que tienen este problema. *(1 puntos)*

3. Ahora implementa un Stored Procedure que corrija todos estos valores erróneos. *(1 puntos)*
	- Recordad **no modificar** la tabla original, cread una copia con Select Into (entregad también esta consulta)
	- Para comprobar que lo habéis hecho bien, intentad añadir la relación entre cada Comment y el usuario que lo ha creado. Si falla, es que aún quedan huérfanos mal indicados.

4. Convertir la consulta de “correción” en una transacción que guarde en una tabla el Id de los huérfanos corregidos y el Id de usuario antes de la modificación *(1 Puntos)* 

<br>

# Vista de Posts y Respuestas (4 puntos)


1. Queremos crear una vista de Posts que nos permita ver el texto (title y body) de cada pregunta hecha en Stack Overflow y el de su respuesta aceptada si la hubiera para hacernos una idea de lo que verán los usuarios. *(1 Punto)*
	
2. Ahora nos gustaría crear otra vista para que nos muestre el texto los comentarios asociados a un mismo post agregados en una sola entrada de texto. *(1 Punto)*
	- Haced un **CAST** a NVARCHAR(MAX) u os **dará error** por exceder el límite de caracteres.
	- Necesitareis usar [**STRING_AGG**](https://www.mssqltips.com/tutorial/sql-string-agg-function/)  para combinar los comentarios
	- Separad los comentarios en distintas líneas **(Recordadme que os explique cómo)**

3. Mejora la vista anterior asegurando que cumple lo siguiente: *(1 punto)*
	- (No hace falta hacer este ejercicio para pasar al siguiente)
	- Los comentarios se agregan en el orden que se hicieron
	- Formatead los comentarios para que sean una [lista HTML](https://www.w3schools.com/Html/html_lists.asp) con cada comentario dentro de un `<li></li>` 
	- Mejorad la optimización de la consulta (Si vais a modificar tablas, usad copias)

4. Modificad la vista de Posts del apartado 1 para que muestre también los comentarios de la pregunta y de la respuesta. *(1 Punto)*
	- Mirad los comentarios de [Este Post](https://stackoverflow.com/questions/79569112/sql-how-to-total-group-by-2-tables) si teneis dudas de como los tendríais que colocar