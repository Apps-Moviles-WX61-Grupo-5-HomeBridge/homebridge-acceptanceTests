Feature: Eliminación de cuenta

#Como arrendatario o propietario, quiero eliminar mi cuenta para ya no recibir correos.

Scenario Outline: Eliminación de cuenta

Given que el usuario desea eliminar su cuenta <user-name>
And proporciona su contraseña <user-password>
When proporciona su contraseña 
Then el sistema le mostrara una notificación de confirmación. <confirmation-toast>

Examples:
| user-name | user-password | confirmation-toast | 
| Nombre    | Contraseña    | Confirmación       |

Scenario Outline: Confirmación de eliminación de cuenta

Given que el usuario observa la notificación de confirmación <confirmation-toast>
When presione el botón de “Confirmar” <confirm-button>
Then el sistema borrara su cuenta. 

Examples:
| confirmation-toast | confirm-button |
| Confirmación       | Confirmar      |


