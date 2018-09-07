Feature: Login en linkedin
	Como Usuario de linkedin
	Quiero el proceso de login exitoso
		
Scenario: Login exitoso
	Given Navegar en la url "http://www.linkedin.com" 
	When Ingresar email "aimer.taby@gmail.com" 
	And Ingresar contrasena "123456"
	Then se debe cargar perfil de linkedin y desplegar mensaje de "login exitoso"
	
Scenario:  Login con un usuario no registrado. 
	Given Navegar en la url "http://www.linkedin.com" 
	When Ingresar email "otrocorreo@gmail.com" 
	And Ingresar contrasena "123456"
	Then Debe mostrar mensaje de error "Usuario no registrado"