Feature: Mostrar publicaciones 

# Como usuario, quiero observar un listado con las propiedades que está exponiendo el arrendador para conocer todas las opciones que están disponibles en el momento.  

Scenario Outline: Visualización satisfactoria de lista de publicaciones

Given el usuario ha ingresado al perfil de un arrendador que le interesa,
When se desplaza a la sección de publicaciones,
Then el sistema mostrará un listado de todas las propiedades disponibles que el arrendador está exponiendo en ese momento.

Examples:
    | tipo_de_propiedad  | direccion              | precio  | descripcion                   |
    | Departamento       | Calle 123, Ciudad      | 500.00  | Departamento céntrico         |
    | Casa               | Av. Principal, Zona    | 1000.00 | Casa espaciosa con jardín     |
    | Local comercial    | Calle Comercio, Barrio | 800.00  | Local comercial bien ubicado  |

Scenario Outline: Visualización de detalles de una propiedad 

Given el usuario ha ingresado al perfil de un arrendador y está viendo la lista de propiedades disponibles,
When seleccione una de las propiedades de la lista,
Then el sistema mostrará los detalles completos de la propiedad, incluyendo la descripción, precio, ubicación, fotos, y otros datos relevantes.

Examples:
    | Campo                  | Detalle          |
    | Descripción            | <descripcion>    |
    | Precio                 | <precio>         |
    | Ubicación              | <ubicacion>      |
    | Fotos                  | <fotos>          |
    | Superficie             | <superficie>     |
    | Número de habitaciones | <habitaciones>   |
    | Servicios              | <servicios>      |