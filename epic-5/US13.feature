Feature: Búsqueda de inmuebles 

# Como usuario, quiero realizar una búsqueda de inmuebles en la plataforma para encontrar propiedades que se ajusten a mis necesidades. 

Scenario Outline: Búsqueda exitosa

Given el usuario ha ingresado criterios generales de búsqueda como ubicación, tipo de propiedad o rango de precios,
And desee buscar publicaciones de este criterio,
When selecciona la opción de “Buscar”
Then el sistema mostrará una lista de inmuebles que coincidan con los criterios ingresados.

Examples:
    | tipo_de_propiedad  | direccion           | precio  | descripcion                |
    | Departamento       | Calle 123, Ciudad   | 500.00  | Departamento en el centro  |
    | Casa               | Av. Principal, Zona | 1000.00 | Casa amplia con jardín     |