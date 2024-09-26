Feature: Usar filtros 

# Como usuario, quiero aplicar filtros específicos en mi búsqueda para refinar los resultados y encontrar propiedades que cumplan con mis preferencias.

Scenario Outline: Aplicación exitosa de filtros

Given el usuario se encuentra en la pantalla de búsqueda,
When selecciona filtros como precio, número de habitaciones y tipo de inmueble
Then el sistema debe mostrar los resultados que cumplen con los filtros aplicados.

Examples:
    | tipo_de_propiedad  | direccion           | precio  | descripcion                |
    | Departamento       | Calle 857, Ciudad A | 1550.00 | Departamento en Ciudad A   |
    | Casa               | Av. Principal, Zona | 7581.00 | Casa amplia con jardín     |

Scenario Outline: Guardar filtros

Given el usuario ha realizado una búsqueda de inmuebles y ha aplicado varios filtros,
When selecciona la opción de “guardar filtros de búsqueda”
Then el sistema debe guardará el filtro aplicado.

Examples:
    | tipo_de_propiedad  | direccion              | precio  | descripcion                |
    | Terreno            | Calle 123, Ciudad      | 500.00  | Terreno en el centro       |
    | Terreno            | Av. Principal, Zona    | 1000.00 | Terreno amplio             |
    | Terreno            | Calle Comercio, Barrio | 750.00  | Terreno limpio y depejado  |