Feature: Recordatorios de publicaciones existentes

# Como usuario, quiero visualizar la información personal de los arrendatarios para tener un mejor conocimiento de la persona que está publicitando en inmueble. 

Scenario Outline: Visualización del perfil de arrendatario

Given el usuario se encuentra en la publicación de una propiedad de interés,
When presione el botón “Información del arrendatario”
Then el sistema mostrara el perfil del arrendatario seleccionado.

Examples:
    | nombre        | telefono        | correo                      |
    | Juan Pérez    | +51 987654321   | juan.perez@email.com        |
    | María García  | +51 912345678   | maria.garcia@email.com      |
    | Luis Martínez | +51 923456789   | luis.martinez@email.com     |

Scenario Outline: Visualización satisfactoria de información 

Given el usuario se encuentra en el perfil de un arrendatario que le llame la atención,
When desliza hacia la sección de “Información”
Then el sistema mostrara la información personal que el arrendatario a publicado en su perfil.

Examples:
    | nombre        | telefono        | correo                  | descripcion                            |
    | Juan Pérez    | +51 987654321   | juan.perez@email.com    | Arrendador con 5 años de experiencia   |
    | María García  | +51 912345678   | maria.garcia@email.com  | Especialista en alquileres de lujo     |
    | Luis Martínez | +51 923456789   | luis.martinez@email.com | Experto en arrendamientos comerciales  |