Feature: Proceso de aumento de cupo tarjeta de crédito
Como falabella 
Quiero comprobar las funcionalidaeds criticas de aumento de cupo en tarjetas de credito

Scenario: Cliente registra deuda en tarjeta de credito
When  <rut> registre deuda en tarjeta N° <tarjeta>
Then No debe permitir avanzar en el proceso de aumento de tarjeta de credito

Scenario: Cliente no registra movimientos en tarjeta de credito
Given cliente <rut> consultado no registre movimientos en su tarjeta N° <tarjeta>
Then No debe permitir avanzar en el proceso de aumento de tarjeta de credito

Scenario: Cliente no ha aprobado o solicitado aumento de cupo
Given cliente <rut> no ha aprobado aumento de cupo en  N° <tarjeta>
Then No debe realizarse aumento, el proceso debe finalizarse

Scenario: Cliente no tenga factibilidad de sueldo
Given cliente <rut> consultado no registre capacidad de pago N° <tarjeta>
Then No debe permitir avanzar en el proceso de aumento de tarjeta de credito

Scenario: Verificacion de factibilidad de contacto y domicilio
When cliente <rut> solicita un aumento de cupo en su N° de tarjeta <tarjeta>. 
And Se debe verificar la factibilidad de contacto y domicilio a través del <rut>
Then Debe estar este prerequisito como factible o aprobado

Examples:
	|nombre|rut|tarjeta|
	|Tabata Mackenzie	|	177819220	|	3000857472  |
	|Francisca Univazo	|	111111111	|	3000619575	|	

