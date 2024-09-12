Feature: Comunicarse con el arrendador 

# Como usuario arrendatario, quiero comunicarme con los arrendadores que subieron las publicaciones para hacerles consultas específicas del inmueble a rentar.

Scenario Outline: Formulario de contacto

Given que el usuario arrendatario se encuentra en la publicación del inmueble <post-id> de su interés
When presione el botón “Contactar” <contact-button>
Then le aparecerá un formulario de contacto <contact-form> el cual al ser enviado notificará al arrendador <notify-message> del mensaje del usuario interesado en su inmueble. 

Examples:
| post-id | contact-button | contact-form | notify-message |
| 1       | Contactar      | Formulario   | Notificación enviada |
| 2       | Contactar      | Formulario   | Notificación enviada |