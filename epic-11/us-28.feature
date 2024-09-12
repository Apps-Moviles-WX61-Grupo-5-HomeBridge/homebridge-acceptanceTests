Feature: Proporcionar números de contacto 

#Como usuario arrendatario, quiero poder tener los números de contacto del arrendatario para hacerles consultas específicas del inmueble a rentar y quedar en una fecha de visita del inmueble.

Scenario Outline: Visualización del número del arrendador

Given que el usuario se encuentra en la publicación del inmueble de su interés <post-id>
When presione el botón contactarse con el arrendador <contact-landlord-button>
Then le aparecerá arriba del formulario de contacto unos números de contacto <contact-number> brindados por el arrendador por los cuales podrá contactarse de manera más directa con este.

Examples:
| post-id | contact-landlord-button | contact-number |
| 1       | Contactar               | 123456789      |
| 2       | Contactar               | 987654321      |
| 3       | Contactar               | 456789123      |