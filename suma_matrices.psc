Funcion MostrarMatriz(nombre, matriz, cantidadFilas, cantidadColumnas)
	Escribir ""
	Escribir "Matriz " + nombre ":"
	
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
	
	Escribir "Ingrese la cantidad de filas de la matriz A"
	Leer filasA
	
	Escribir "Ingrese la cantidad de columnas de la matriz A"
	Leer columnasA
	
	Dimensionar matrizA[filasA, columnasA]
	
	Escribir "Ingrese la cantidad de filas de la matriz B"
	Leer filasB
	
	Escribir "Ingrese la cantidad de columnas de la matriz B"
	Leer columnasB
	
	Dimensionar matrizB[filasB, columnasB]
	
	lasMatricesSonIguales <- filasA == filasB Y columnasA == columnasB
	
	Dimensionar matrizResultado[filasA, columnasA]

	Si lasMatricesSonIguales Entonces
		CrearMatriz("A", matrizA, filasA, columnasA)
		MostrarMatriz("A", matrizA, filasA, columnasA)
		
		Escribir ""
		
		CrearMatriz("B", matrizB, filasB, columnasB)
		MostrarMatriz("B", matrizB, filasB, columnasB)
		
		Para indiceFila <- 1 Hasta filasA
			Para indiceColumna <- 1 Hasta columnasA
				matrizResultado[indiceFila,indiceColumna] <- matrizA[indiceFila,indiceColumna] + matrizB[indiceFila,indiceColumna]
			FinPara
		FinPara
		
		MostrarMatriz("Resultado", matrizResultado, filasA, columnasA)
	SiNo
		Escribir "Para sumar dos matrices necesitamos que tengan igual cantidad de filas y columnas"
	Fin Si
	
FinAlgoritmo
