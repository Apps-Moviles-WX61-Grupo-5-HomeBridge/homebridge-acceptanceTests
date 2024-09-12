Feature: Iniciar sesión

#Como arrendatario o propietario, quiero iniciar sesión en la aplicación para acceder a la aplicación SaleSquare.

Scenario Outline: Inicio de sesión exitoso

Given el usuario se encuentra en la pantalla de inicio
And ingrese su usuario y contraseña
When presione el botón de “Iniciar sesión” <login-button>
Then el sistema mostrara su sección de inicio <login-message>

Examples:
| login-button | login-message | 
| Iniciar       | Aprobado      |

Scenario Outline: Inicio de sesión denegado

Given que el usuario se encuentra en la pantalla de inicio
And ingrese un usuario y contraseña erróneos
When presione el botón de “Iniciar sesión” <login-button>
Then el sistema no permitirá el ingreso a la cuenta del usuario. <login-message>

Examples:
| login-button | login-message |
| Iniciar      | Denegado      |
