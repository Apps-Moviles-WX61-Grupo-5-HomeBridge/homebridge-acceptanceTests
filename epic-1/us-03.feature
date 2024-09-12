Feature: Recuperación de contraseña

#Como arrendatario o propietario, quiero recuperar mi contraseña para poder acceder nuevamente a mi cuenta si la olvido.

Scenario Outline: Formulario de recuperación de contraseña 

Given que el usuario se encuentra en la pantalla de inicio de sesión
When selecciona la opción “Olvide mi contraseña” <forget-button>
Then el sistema le mostrara el formulario de recuperación de contraseña. <forget-form>

Examples:
| forget-button | forget-form |
| Olvidar       | Formulario

Scenario Outline: Recuperación de contraseña exitosa

Given que el usuario se encuentra en el formulario de recuperación de cuenta
And llene correctamente su correo electrónico
When presione el botón de “Recuperar” <recover-button>
Then el sistema debe permitirle crear una nueva contraseña y firmarla. <new-password-form>

Examples:
| recover-button | new-password-form |
| Recuperar      | Formulario        |
