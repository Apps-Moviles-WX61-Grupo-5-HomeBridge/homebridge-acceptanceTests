Feature: Recordatorios de publicaciones existentes

# Como arrendatario o anunciante dentro de la aplicación, quiero recibir notificaciones sobre notificaciones importantes de una publicación mía para poder responder y/o atender potenciales clientes. 

Scenario Outline: Notificación de inmueble

Given el usuario anunciante tiene activada las opciones de notificación de la aplicación,
When un usuario cliente presione el botón de “Contactar” de su perfil  
And reciba un mensaje o una actualización sobre una publicación suya
Then el sistema le enviará una notificación a la bandeja del dispositivo.

Examples:
    | cliente       | perfil_anunciante       | mensaje                       |
    | Usuariop3     | AnuncianteCasaLima      | "Estoy interesado en la casa" |
    | Comprador68   | AnuncianteDeptoArequipa | "Quiero saber más detalles"   |
    | Clienteae     | AnuncianteTerrenoCusco  | "Consulta sobre el terreno"   |