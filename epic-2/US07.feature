Feature: Compartir información  

# Como arrendatario o propietario de un inmueble, quiero poder compartir mi publicación para llegar a más usuario dentro y fuera de la aplicación. 

Scenario Outline: Registro de propiedad 

Given el usuario complete el formulario de creación de publicación,
When copie el enlace único de la publicación 
Then podrá compartirlo con otros usuarios directamente.

Examples:
    | enlace_publicacion                       |
    | https://salesquare.com/publication/12345 |
    | https://salesquare.com/publication/67890 |