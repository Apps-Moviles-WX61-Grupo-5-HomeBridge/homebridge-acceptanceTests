Feature: Ver estadísticas 

# Como usuario arrendador, quiero ver las estadísticas de mis publicaciones para poder saber a cuántas personas estoy llegando y si tengo que mejorar mi estrategia de publicación.

Scenario Outline: Visualización de estadísticas

Given que el arrendador se encuentra en la pantalla de configuración de cuenta
And tiene una publicación con id <id>
When presione en el botón de la sección de estadísticas de mis publicaciones
Then el sistema mostrará la cantidad de personas <views> que han visto sus publicaciones a frecuencia semanal y mensual.
And le indicará que si busca aumentar sus números puede tomar en cuenta afiliarse a una de nuestras suscripciones con un botón debajo que lo redirija automáticamente a la sección de planes de suscripción.

Examples:
| id | views |
| 1  | 100   |
| 2  | 200   |
| 3  | 300   |
| 4  | 400   |
| 5  | 500   |