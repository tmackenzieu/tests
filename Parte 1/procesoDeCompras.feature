Feature: Proceso de compras a través del carrito desde la selección del producto
 hasta el proceso de pago

Scenario: login en CMR 
Given Navegar en la url "http://www.cmr.cl" 
When Seleccionar en menú Iniciar Sesion 
And  Ingrese username y password 
	|username|password|
	|tmackenzieu@gmail.com|h0laquetal|
And haga clic en iniciar sesion 
Then Debe mostrarse un mensaje "Sesión iniciada exitosamente" 
	
Scenario: Compra sin proceso de login
Given cliente no logueado tiene sus productos seleccionados
When selecciona boton pagar
Then Debe desplegarse alert indicando "Debes loguearte"

Scenario: Seleccion de producto que no tiene stock
When selecciona producto <id>
Then Debe tener boton pagar deshabilitado

Scenario: Seleccion de producto con stock
When selecciona producto <id>
Then Debe tener boton pagar deshabilitado

Scenario: Pagar productos con datos de tarjeta de credito no validos
When login en CMR 
And Seleccion de producto con stock
And Seleccionar pagar 
And Ingresar datos de tarjeta de credito visa no validos
Then No debe permitir hacer el proceso de pago, debe alertar "datos ingresados incorrectos"

Scenario: Pagar productos con datos de tarjeta de credito sin saldo
When login en CMR 
And Seleccion de producto con stock
And Seleccionar pagar 
And Ingresar datos de tarjeta de credito visa validos
Then Debe consultarse servicio que retorne tarjetaDeCreditoSinSaldo


Examples:
|	producto| id    | stock |
|	raqueta	|	1	|	10  |
|	pelotas	|	2	|	1	|	
|	sombrero|	3	|	0	|	