Funcion MostrarMatriz(nombre, matriz, cantidadFilas, cantidadColumnas)
	Escribir ""
	Escribir "Matriz " + nombre ":"
	
	// Recorremos la matriz y mostramos valores
	Para indiceFila <- 1 Hasta cantidadFilas  Hacer
		Para indiceColumna <- 1 Hasta cantidadColumnas Hacer
			Escribir ConvertirATexto(matriz[indiceFila, indiceColumna]) + " " Sin Saltar
		Fin Para
		Escribir ""
	Fin Para
FinFuncion

Funcion CrearMatriz(nombre, matriz, cantidadFilas, cantidadColumnas)
	Definir valorCelda Como Entero
	
	Escribir "Vamos a crear la matriz " + nombre
	
	// Recorremos la matriz y guardamos valores
	Para indiceFila <- 1 Hasta cantidadFilas Hacer
		
		Para indiceColumna <- 1 Hasta cantidadColumnas Hacer
			Escribir "Ingrese el valor de la celda " + ConvertirATexto(indiceFila) + "," + ConvertirATexto(indiceColumna)
			Leer valorCelda
			
			matriz[indiceFila, indiceColumna] <- valorCelda
		Fin Para
		
	Fin Para
FinFuncion

Algoritmo SumaDeMatrices
	Definir matrizA, matrizB, matrizResultado, filasA, columnasA, filasB, columnasB Como Entero
	Definir lasMatricesSonIguales Como Logico
	
	// Pedimos al usuario que ingrese la cantidad de filas y columnas
	Escribir "Ingrese la cantidad de filas de la matriz A"
	Leer filasA
	
	Escribir "Ingrese la cantidad de columnas de la matriz A"
	Leer columnasA
	
	Dimensionar matrizA[filasA, columnasA]
	
	// Pedimos que ingrese los valores para la matriz
	Escribir "Ingrese la cantidad de filas de la matriz B"
	Leer filasB
	
	Escribir "Ingrese la cantidad de columnas de la matriz B"
	Leer columnasB
	
	Dimensionar matrizB[filasB, columnasB]
	
	// Validamos que las matrices son iguales
	lasMatricesSonIguales <- filasA == filasB Y columnasA == columnasB

	Si lasMatricesSonIguales Entonces
		Dimensionar matrizResultado[filasA, columnasA]
		
		CrearMatriz("A", matrizA, filasA, columnasA)
		MostrarMatriz("A", matrizA, filasA, columnasA)
		
		Escribir ""
		
		CrearMatriz("B", matrizB, filasB, columnasB)
		MostrarMatriz("B", matrizB, filasB, columnasB)
		
		// Realizamos la suma
		Para indiceFila <- 1 Hasta filasA
			Para indiceColumna <- 1 Hasta columnasA
				matrizResultado[indiceFila,indiceColumna] <- matrizA[indiceFila,indiceColumna] + matrizB[indiceFila,indiceColumna]
			FinPara
		FinPara
		
		// Mostramos la matriz resultado
		MostrarMatriz("Resultado", matrizResultado, filasA, columnasA)
	SiNo
		Escribir "Para sumar dos matrices necesitamos que tengan igual cantidad de filas y columnas"
	Fin Si
	
FinAlgoritmo
