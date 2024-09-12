Feature: Registro de un nuevo usuario

#Como arrendatario o propietario, quiero registrarme en la aplicación para acceder a todas las funcionalidades de SaleSquare.

Scenario Outline: Formulario de Registro

Given el usuario se encuentra en la pantalla de inicio
When presiona el botón de “Registrarse” <register-button>
Then se le mostrará un formulario en el que llenará la información de registro de su cuenta. <register-form>

Examples:
| register-button | register-form |
| Registrar       | Formulario    |

Scenario Outline: Registro exitoso

Given el usuario llene la información requerida de registro
When presiona el botón de “Registrarse”
Then el sistema creara su nueva cuenta 
And lo redirigirá a la pantalla de inicio de sesión.

Examples:
| register-button |
| Registrar       |

