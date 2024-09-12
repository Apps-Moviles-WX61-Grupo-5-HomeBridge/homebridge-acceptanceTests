Feature: Acceso directo en publicaciones
#  Como usuario, quiero tener una opción de acceso a la calculadora crediticia desde las publicaciones para facilitar el proceso de verificación de presupuesto y el manejo de la aplicación
  
  Scenario Outline: Acceso directo a la calculadora financiera desde una publicación
    Given que el usuario se encuentra en la pantalla de visualización de una inmobiliaria
    When presione el botón de “Calculadora Crediticia”
    Then se redirige a la pantalla de la calculadora crediticia
    