Feature: Mostrar foto de perfil del arrendador   

# Como usuario, quiero visualizar la foto de perfil correspondiente del arrendatario para tener una referencia visual de quien es el que está encargado de la propiedad. 

Scenario Outline: Visualización satisfactoria de imagen

Given el usuario se encuentra en una publicación de propiedad,
When presione el botón “Información del arrendatario”,
Then el usuario podrá observar la foto publicada por el arrendatario en la parte inicial del perfil.

Examples:
    | imagen_arrendatario | nombre       | telefono    |
    | arrendatario1.jpg   | Juan Pérez   | 555-1234    |
    | arrendatario2.jpg   | María Gómez  | 555-5678    |