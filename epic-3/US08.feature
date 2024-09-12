Feature: Notificaciones acerca de una propiedad 

# Como comprador o interesado en propiedades, quiero recibir notificaciones sobre potenciales propiedades para poder conseguir y encontrar propiedades mucho más rápido. 

Scenario Outline: Notificación de inmueble

Given el usuario quiere recibir notificaciones de potenciales propiedades,
When configure las preferencias del inmueble que desea adquirir
And el sistema encuentre un inmueble que se acomode a sus preferencias
Then se le enviará una notificación informándole sobre el inmueble que puede que le interese.

Examples:
    | tipo          | ciudad       | precio_max | num_habitaciones | notificacion                               |
    | Casa          | Lima         | 300000     | 3                | Notificación enviada: Casa en Lima         |
    | Departamento  | Arequipa     | 150000     | 2                | Notificación enviada: Depto en Arequipa    |
    | Terreno       | Cusco        | 100000     | 0                | Notificación enviada: Terreno en Cusco     |