Feature: Edición de cuenta

#Como arrendatario o propietario, quiero editar mi cuenta para mostrar mi perfil.

Scenario Outline: Edicion de cuenta de usuario.

Given que el usuario se encuentra en la pantalla de perfil de usuario
When selecciona la opción “Editar mi perfil” <edit-profile-button>
Then se le permitirá modificar la información del perfil <user-edit-profile>

Examples:
| edit-profile-button | user-edit-profile |
| Editar Perfil       | Editar Perfil     |
