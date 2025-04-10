
# ANTES DE NADA

==Descargad e instalad la base de datos **StackOverflowMini**.== Todo el ejercicio se va a basar en ella.

# Ejercicio 1 *(2,5 Puntos)*

A veces los comentarios de Github se refieren a otros usuarios mediante el patrón **@usuario**. Nos gustaría tener una forma mejor de trabajar con estos comentarios.

1. Crea una **Vista** de **Users** que devuelva su ID, su nombre y el número de comentarios que empiezan con **@SuUsuario**  *(1 Punto)*
	- Consejo: Limitad mucho el número de registros que a mostrar cuando esteis probando la consulta
2. Enumera los motivos por los que esta Vista es tan lenta *(1 Punto)*
3. Optimiza esta vista *(0.5 Puntos)*
	- Pista: es posible lograr que te devuelva las 1000 primeras filas en décimas de segundo
	- Si necesitais modificar tablas u otros elementos, no modifiqueis los originales. Cread copias con **SELECT * INTO \<Nombre de la nueva tabla>** o lo que sea que haga falta

<br>

# Ejercicio 2 *(2,5 Puntos)*

En la tabla **Posts** de **StackOverflowMini** tenemos la columna tags, que nos indica cuales son los temas de los que trata el post, pero su formato es bastante problemático. Nos gustaría tener una forma más practica de poder buscar y/o agrupar posts según sus tags.

1. Sin modificar la tabla **Posts** (ni ninguna otra ya existente), escribe una query que cree una estructura que permita buscar los siguientes tags mucho más rápido: **C**, **C#**, **C++**, **SQL**, **Java**, **PHP** y **Python**. *(1 Punto)*
2. Intentad que la estructura que habeis creado esté lo más optimizada posible *(1 Punto)*
3. Generalizad el proceso para que pueda gestionar todos los tags existentes en la base de datos sin que los especifiqueis manualmente. *(0,5 Puntos)*