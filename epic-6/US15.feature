Feature: Mostrar imágenes  

# Como usuario, quiero ver imágenes de las propiedades para evaluar visualmente si son de mi interés. 

Scenario Outline: Visualización de imágenes

Given el usuario selecciona una propiedad de la lista de resultados,
When seleccione “Detalles”,
Then el sistema debe mostrar una galería de imágenes de la propiedad seleccionada.

Examples:
    | foto_1             | foto_2            | foto_3            |
    | fachada1.jpg       | interior1.jpg     | jardin1.jpg       |
    | sala_principal.jpg | cocina.jpg        | dormitorio.jpg    |