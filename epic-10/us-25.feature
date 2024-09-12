Feature: Eliminar una publicación 

# Como usuario, quiero tener la opción de eliminar mis publicaciones para que otros usuarios no piensen que la venta/alquiler de mi inmueble sigue activa.

Scenario Outline: Eliminación de publicación

Given que el arrendador se encuentra en la pantalla de una de sus publicaciones,
When presione el botón de “Eliminar” <delete-button>
Then el sistema mostrará un mensaje pidiendo al usuario que confirme la eliminación <delete-confirmation-dialog>.

Examples:
| delete-button | delete-confirmation-dialog |
| Eliminar      | ¿Está seguro que desea eliminar esta publicación? |

Scenario Outline: Confirmación de eliminación

Given que el arrendador ha presionado la eliminación de su publicación <delete-button>,
And observa el mensaje de confirmación <delete-confirmation-dialog>
When presione el botón “Confirmar” <confirmation-button>
Then el sistema procederá a eliminar la publicación.

Examples:
| delete-button | delete-confirmation-dialog | confirmation-button |
| Eliminar      | ¿Está seguro que desea eliminar esta publicación? | Confirmar |