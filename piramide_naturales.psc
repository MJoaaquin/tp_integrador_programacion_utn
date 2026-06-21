Funcion espacios <- AgregarEspacio(cantidadDeEspacios, espacios)
	Si cantidadDeEspacios = 0 Entonces
		espacios <- espacios
	SiNo
		espacios <- AgregarEspacio(cantidadDeEspacios - 1, Concatenar(espacios, " "))
	FinSi
FinFuncion

Algoritmo PiramideNaturales
	Definir alturaPiramide, cantidadDeEspacios Como Entero
	
	// Pedimos la altura de la piramide
	Escribir "Ingrese la altura de la piramide"
	Leer alturaPiramide
	
	// Dibujamos cada escalon
	Para escalon <- 1 Hasta alturaPiramide Hacer
		cantidadDeEspacios <- alturaPiramide - escalon
		
		// Funcion recursiva para agregar espacios para centrar los numeros
		Escribir AgregarEspacio(cantidadDeEspacios, espacio) Sin Saltar
		
		// Cantidad de numeros por escalon
		Para valor_del_escalon <- 1 Hasta escalon Hacer
			Escribir ConvertirATexto(escalon) + " " Sin Saltar
		Fin Para
		
		Escribir ""
	Fin Para
FinAlgoritmo
