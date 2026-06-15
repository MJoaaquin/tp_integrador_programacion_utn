Algoritmo Promedio
	Definir numeroIngresado, prom, sum Como Real
	Definir cantidadDeNumeros Como Entero
	
	sum <- 0
	cantidadDeNumeros <- 0

	
	Repetir
		Escribir "Ingrese un numero"
		Leer numeroIngresado
		
		Si numeroIngresado >= 0 Entonces
			sum <- sum + numeroIngresado
			cantidadDeNumeros <- cantidadDeNumeros + 1
		Fin Si
		
	Hasta Que numeroIngresado < 0
	
	prom <- sum / cantidadDeNumeros
	
	Escribir "El promedio de los numeros ingresados es: " + ConvertirATexto(prom)
FinAlgoritmo
