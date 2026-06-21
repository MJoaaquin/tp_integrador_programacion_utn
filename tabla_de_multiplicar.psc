Algoritmo TablaDeMultiplicar

	Definir numero, i, resultado Como Entero
	
	// Pedir el numero para multiplicar
	Escribir "Ingrese un número para realizar la multiplicacion:"
	Leer numero
	
	// Dibujar tabla de multiplicar
	Para i <- 1 Hasta 20
		resultado <- numero * i
		Escribir numero, " x ", i, " = ", resultado
	FinPara

FinAlgoritmo
