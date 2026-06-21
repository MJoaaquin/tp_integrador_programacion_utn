Funcion interesCalculado <- CalcularInteres(capital, tiempo, tasa)
	Definir interesCalculado Como Real
	
	// Calculo de interes
	interesCalculado <- (capital * (tasa / 100) * tiempo)
FinFuncion

Algoritmo Interes
	Definir capital Como Real
	Definir tiempo, tasa Como Entero
	
	// Constante de tasa de interes 
	tasa <- 25
	
	// Pedimos el capital
	Escribir "Ingrese el monto al cual desea calcular el interes"
	Leer capital
	
	// Pedimos el tiempo
	Escribir "Ingrese el tiempo (en meses)"
	Leer tiempo
	
	// Mostramos el resultado
	Escribir ""
	Escribir "Con una tasa mensual del " +  ConvertirATexto(tasa) +"%"
	Escribir "El interes obtenido es de: $" + ConvertirATexto(CalcularInteres(capital, tiempo, tasa))
FinAlgoritmo
