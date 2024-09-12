Feature: Editar una publicación 

# Como usuario, quiero editar mis publicaciones para modificar los detalles necesarios.

Scenario Outline: Validación de cambios

Given que el usuario se encuentra en la pantalla de una de sus publicaciones <user-post-id>,
When presione el botón de menú <menu-button>
And abra el menú desplegable de la publicación <post-menu>
And seleccione la opción de Editar <edit-option>
Then el sistema le permitirá editar la publicación hecha y posteriormente el usuario deberá presionar el botón de confirmación de cambios <edit-confirmation-button> para que la edición sea válida.

Examples:
| user-post-id | menu-button | post-menu | edit-option | edit-confirmation-button
| 1            | Menú        | Editar    | Confirmar   | Guardar
| 2            | Menú        | Editar    | Confirmar   | Guardar