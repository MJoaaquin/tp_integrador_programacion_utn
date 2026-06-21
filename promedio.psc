Algoritmo Promedio
	Definir numeroIngresado, prom, sum Como Real
	Definir cantidadDeNumeros Como Entero
	
	// Iniciamos las variables en 0
	sum <- 0
	cantidadDeNumeros <- 0

	// Pedimos numeros hasta que ingrese un numero negativo
	Repetir
		Escribir "Ingrese un numero"
		Leer numeroIngresado
		
		// Sumamos y guardamos cantidad de numeros ingresados
		Si numeroIngresado >= 0 Entonces
			sum <- sum + numeroIngresado
			cantidadDeNumeros <- cantidadDeNumeros + 1
		Fin Si
		
	Hasta Que numeroIngresado < 0
	
	// Calculamos el promedio
	prom <- sum / cantidadDeNumeros
	
	// Mostramos resultado
	Escribir "El promedio de los numeros ingresados es: " + ConvertirATexto(prom)
FinAlgoritmo
