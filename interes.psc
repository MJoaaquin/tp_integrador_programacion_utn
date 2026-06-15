Funcion interesCalculado <- CalcularInteres(capital, tiempo, tasa)
	Definir interesCalculado Como Real
	
	interesCalculado <- (capital * (tasa / 100) * tiempo)
FinFuncion

Algoritmo Interes
	Definir capital Como Real
	Definir tiempo, tasa Como Entero
	
	tasa <- 25
	
	Escribir "Ingrese el monto al cual desea calcular el interes"
	Leer capital
	
	Escribir "Ingrese el tiempo (en meses)"
	Leer tiempo
	
	Escribir ""
	Escribir "Con una tasa mensual del " +  ConvertirATexto(tasa) +"%"
	Escribir "El interes obtenido es de: $" + ConvertirATexto(CalcularInteres(capital, tiempo, tasa))
FinAlgoritmo
