Feature: Calculadora integrada
#  Como usuario, quiero tener acceso a una calculadora financiera para verificar si el precio de la propiedad se encuentra dentro de mi presupuesto
  Scenario Outline: Acceso a la calculadora financiera
    Given que el usuario se encuentra en la pantalla principal de la aplicación 
    When presione el botón de “Calculadora Financiera”
    Then se redirige a la pantalla de la calculadora financiera
    And se muestran los campos: tipo de crédito, plazo, moneda, precio del inmueble, cuota inicial, monto a financiar y cuotas.
    
  Scenario Outline: Uso de la calculadora financiera
    Given que el usuario se encuentra en la pantalla de la calculadora financiera
    When el usuario ingrese los siguientes datos: <tipo de crédito>, <plazo>, <moneda>, <precio del inmueble>, <cuota inicial>
    And presione el botón de “Calcular”
    Then se muestra el monto a financiar y las cuotas a pagar
    
    Examples: 
        | tipo de crédito | plazo | moneda | precio del inmueble | cuota inicial |
        | Hipotecario     | 20    | USD    | 100000              | 20000         |
        | Personal        | 10    | USD    | 50000               | 10000         |
        | Automotriz      | 5     | USD    | 20000               | 5000          |
        | Hipotecario     | 15    | USD    | 80000               | 15000         |
        | Personal        | 8     | USD    | 40000               | 8000          |
        | Automotriz      | 3     | USD    | 15000               | 3000          |