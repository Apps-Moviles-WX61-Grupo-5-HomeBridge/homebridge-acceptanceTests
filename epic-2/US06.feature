Feature: Registrar propiedad 

# Como arrendador o propietario de un inmueble, quiero registrar dicho inmueble para compartir y anunciar mi propiedad.

Scenario Outline: Registro de propiedad 

Given que el usuario quiere registrar o anunciar una propiedad,
And llene los datos solicitados satisfactoriamente, 
When presione el botón “Crear” 
Then una nueva publicación será creada. 

Examples:
    | tipo_de_propiedad  | direccion           | precio  | descripcion                |
    | Departamento       | Calle 123, Ciudad   | 500.00  | Departamento en el centro  |
    | Casa               | Av. Principal, Zona | 1000.00 | Casa amplia con jardín     |

Scenario Outline: Visualización de propiedad

Given el usuario quiere subir imágenes referentes a una propiedad, 
And adjunte las fotos solicitadas, 
When presione el botón “Añadir”
Then una nueva publicación contará con imágenes referentes.

Examples:
    | imagen1                  | imagen2                  | imagen3                  |
    | imagen_sala.jpg          | imagen_cocina.jpg        | imagen_jardin.jpg        |
    | imagen_exterior.jpg      | imagen_habitacion1.jpg   | imagen_baño.jpg          |