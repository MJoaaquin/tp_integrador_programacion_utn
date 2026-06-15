Algoritmo Adivinar
	Definir eleccionDeUsuario, numeroAleatorio, distancia, cantidadDeIntentos Como Entero
	
	numeroAleatorio <- Azar(25) + 1
	cantidadDeIntentos <- 0
	
	Escribir "Intente adivinar el numero"
	
	Repetir
		cantidadDeIntentos <- cantidadDeIntentos + 1
		
		Escribir ""
		Escribir "Ingrese un numero del 1 al 25"
		Leer eleccionDeUsuario
		
		Si eleccionDeUsuario > 25 Entonces
			Escribir "Ingresaste un número mayor a 25, volve a intentar!"
		SiNo
			
			distancia <- abs(numeroAleatorio - eleccionDeUsuario)
			
			Segun distancia Hacer
				0:
					Escribir "Adivinaste en " + ConvertirATexto(cantidadDeIntentos) + " intentos!"
				1, 2, 3:
					Escribir "Estuviste cerca, volve a intentar!"
				De Otro Modo:
					Escribir "Fallaste, volve a intentar!"
			Fin Segun
		Fin Si
	Hasta Que distancia == 0
FinAlgoritmo
