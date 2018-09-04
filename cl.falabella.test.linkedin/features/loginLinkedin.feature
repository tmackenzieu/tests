Feature: Login en linkedin
	Como Usuario de linkedin
	Quiero el proceso de login exitoso
		
Scenario: Login exitoso
	Given Navegar en la url "http://www.linkedin.com" 
	When Ingresar email "aimer.taby@gmail.com" 
	And Ingresar contraseña "123456"
	Then se debe cargar perfil de linkedin
	
Scenario:  Login con un usuario no registrado. 
	Given Navegar en la url "http://www.linkedin.com" 
	When Ingresar email "otrocorreo@gmail.com" 
	And Ingresar contraseña "123456"
	Then Debe mostrarse un mensaje "Sesión iniciada exitosamente" 