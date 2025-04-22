
# ANTES DE NADA

> [!WARNING]
> Descargad e instalad la base de datos **[StackOverflowMini](https://github.com/BrentOzarULTD/Stack-Overflow-Database/releases/download/20230114/StackOverflowMini.bak)**. Todo el ejercicio se va a basar en ella.

# Normalize UserStats (4 Puntos)

> [!WARNING]
> Ejecutad el archivo **UserStats Table Data.sql** para tener la tabla **Custom.UserStats**

**UserStats** es una tabla que agrega distinta información sobre los usuarios que ya se encuentra en otras tablas para que podamos hacer operaciones y consultas con más facilidad.

La tabla entera es redundante y va en contra de las ideas fundamentales detrás de las Normal Forms, pero esto no quiere decir que no podamos aplicar sus reglas de forma selectiva para mejorarlas.

1. Por cada columna de la tabla (en orden) indicad qué **Normal Form** incumple y porqué *(1 Punto)*
	- Si la columna depende de una tabla que no sea **Users**, indicadlo
	- Si la columna viola varias Normal Forms por distintos motivos, indicad cada motivo

2. Debido al coste de computar la tabla solo la actualizamos cada varias horas, es decir, que la tabla siempre se encuentra ligeramente desactualizada. Por cada columna de **Custom.UserStats**, indica cómo de propensa es a quedar desactualizada. *(1 Punto)*
	- Analizad las tablas relacionadas para saber si los valores cambian a menudo
	- Mirad la web de [Stack Overflow](https://stackoverflow.com/) para ver el tipo de uso que reciben estos datos.

3. Partiendo del **Apartado 1**, indica qué columnas pueden ser eliminadas con una pérdida **negligible** de velocidad *(0.5 puntos)*
	- Considera el tipo de operaciones necesarias para calcularlas y su eficiencia
	- Recordad los distintos factores que afectan a la eficiencia de un Join

4. Como “proof of concept”, crea una **Vista** de **Custom.UserStats** que compute las columnas eliminables del **Apartado 3** en vez de obtenerlas de la tabla original. *(0.5 puntos)*
	- Nota: que la Vista sea significativamente más lenta no implica que vuestro Apartado 3 esté mal ya que en la práctica solo computarías las columnas que necesitas.

5. Partiendo de los **Apartados 1, 2 y 3**, indica qué otras modificaciones podríamos realizar para mejorar la integridad (reducir la desincronización) de la tabla sin que nuestras consultas pierdan demasiada velocidad. *(0.5 puntos)*
	- No queremos que tarde varios segundos
	- También queremos que escale adecuadamente con el tamaño de la tabla
		- Es decir, que no queremos que se vuelva exponencialmente más lenta
		- Repasad cómo afectan las distintas cosas a la velocidad de los Joins
		- Vigilad con la complejidad de realizar ciertos cálculos

6. Partiendo de la vista del **Apartado 4**, implementad las mejoras del **Apartado 5** *(0.5 puntos)*
	- Recordad, si no lográis/sabéis hacer algo, entregad una vista que funcione y poned en comentarios qué os ha fallado
