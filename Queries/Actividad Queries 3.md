
# Retro Youtube Likes

Queremos crear un sistema de likes para vídeos que funcione como el sistema priginal de youtube (con hasta 5 estrellas). Queremos que este sistema lleve la cuenta de tanto los votos como de la media de votos en tiempo real de cada vídeo.

> [!WARNING]
> Si vais a crear una base de datos nueva, que se llame **Youtube2006**. Y si usais una existente, que las tablas tengan el esquema **Custom.** para evitar que se solapen con tablas existentes.

1. Crea las tablas que necesitaremos para este sistema.
    - Pon mucha atención en los tipos de los datos ya que debemos maximizar su eficiencia
    - Vigila: Las reviews de los usuarios pueden variar en unidades de media estrella, pero para la media queremos al menos dos decimales de precisión.

2. Crea un SP que gestione el añadir "reviews" a un vídeo.
    - También ha de actualizar la media del vídeo
    - Ha de recibir como parámetros el nombre del usuario y la nota que le ha puesto al vídeo
    - El SP ha de preservar la integridad de la base de datos y ser capaz de gestionar inputs erróneos

3. Modifica el SP para que también sirva para modificar reviews existentes
    - Recuerda modificar también la media según corresponda.
    - Si hay algo que no sabes hacer, pregunta o índicalo en la entrega.

<br>

---

<br>

> [!note] Fun Fact
> [Este era el aspecto de youtube en 2006, por si teneis curiosidad](https://www.webdesignmuseum.org/gallery/youtube-2006)