

# Channel Bans (3 Puntos)

Nos hemos encontrado con que varios usuarios incumplen los términos de servicio y queremos **quitarles el acceso** a su cuenta. Sin embargo, no queremos borrarla directamente, sino marcar la cuenta como “baneada” y darles un tiempo para apelar antes de que se borre definitivamente.

1. Altera la base de datos existente (con una query) para poder indicar los canales baneados de forma **eficiente**. *(1,5 Puntos)*
	- Ten en cuenta que **muy pocos** canales van a estar baneados. Intenta minimizar el uso de **memoria** para los canales no baneados.
	- **No rehagais tablas enteras**. Queremos que esta modificación sea compatible con otras. Limitad los cambios a las columnas que realmente estais modificando.
	- Hay que indicar también la **Fecha** del ban ya que queremos que estas se borren al cabo de unos meses.
	- Recordad que explicar vuestro razonamiento suele dar puntos.

2. Queremos hacer una vista de Usuarios llamada **ValidUsers** que solo muestre los Usuarios que no han sido baneados. *(0,5 Puntos)*
	- Garantizad la velocidad de esta Vista, la vamos a usar constantemente.

3. Banear no sirve de nada si no restringimos el acceso a los vídeos del usuario, sin embargo, no queremos que los usuarios crean que es un error. Para evitarlo, crearemos una vista **vVideos** para que los vídeos se muestren pero **“censurando”** los que sean de usuarios baneados. *(1 Punto)*
	- En lugar del **título** real, se mostrará **“Video Bloqueado”**
	- En lugar de la **descripción**, se mostrará **“Este video es inaccesible porque su creador ha incumplido los términos de servicio”**
	- El resto de campos permanecerán intactos.
	- Los videos de usuarios no baneados también han de permanecer intactos.


# Youtube Comments (1,5 Puntos)

Tenemos la siguiente tabla para representar los comentarios de los vídeos y las respuestas a otros comentarios. 

```SQL
USE Youtube2006
CREATE TABLE Comments(
	commentId BIGINT PRIMARY KEY IDENTITY(1,1),
	videoId INT NOT NULL,
	parentCommentId BIGINT NULL,
	userId INT NOT NULL,
	content NVARCHAR(MAX) NOT NULL,
)
```

1. Crea un stored procedure para poner un comentario en un vídeo *(0,25 puntos)*

2. Cread otro stored procedure para poner comentarios en respuesta a otro comentario. *(0,25 Puntos)*
	- **Importante:** además del texto introducido por el usuario, los comentarios deben empezar por “@username ” donde username es el nombre del usuario al que se está respondiendo.

3. Nos hemos dado cuenta “a posteriori” de que nos iría bien que los comentarios tuvieran **Fecha** y **commentCount**, así que queremos modificar la tabla para que tengan esos campos. *(0,5 Puntos)*
	- Han de ser NO nullables
	- Las nuevas columnas han de ser retrocompatibles con los stored procedures sin necesidad de modificarlos. (Han de funcionar sin errores pese a no introducir esos datos)

4. Modificad el SP del apartado 2 para que además actualice el **commentCount** *(0,5 Puntos)*

# Teoría (1,5 Puntos)

Partiendo de la tabla de **Comments** (con la **fecha** y el **commentCount**) **YA AÑADIDOS**, vamos a analizar distintas formas de mejorarlas

1. Tenemos múltiples datos en la tabla que son redundantes (están ya en otro sitio) o ineficientes en su uso de la memoria. Identifícalos, explica porqué lo son y las mejoras que harías. *(0,75 puntos)*
	- Si hay algo que no mejorarías, explica también porqué

2. Analiza ahora la velocidad de las posibles consultas relacionadas con los comentarios e indica las mejoras que harías. *(0,75 puntos)*
	- Considerad también las consultas resultantes de eliminar las redundancias en el apartado anterior
