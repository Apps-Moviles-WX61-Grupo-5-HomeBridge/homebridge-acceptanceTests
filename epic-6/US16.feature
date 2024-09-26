Feature: Información y detalles de la propiedad

# Como usuario, quiero ver la información completa y los detalles de la propiedad para decidir si es adecuada para mis necesidades.

Scenario Outline: Visualización de información detallada

Given el usuario accede a la página de una propiedad específica desde la lista de resultados o mediante un enlace directo,
When se desplace por toda la pantalla,
Then el sistema debe mostrar todos los detalles relevantes como precio, área, características especiales, y contacto del arrendador.

Examples:
    | precio  | area  | caracteristicas_especiales               | contacto_arrendador       |
    | 500.00  | 60m2  | Cerca de transporte público, balcón      | Juan Pérez, 555-1234      |
    | 1000.00 | 150m2 | Jardín, piscina, seguridad 24h           | María Gómez, 555-5678     |