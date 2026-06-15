Funcion espacios <- AgregarEspacio(cantidadDeEspacios, espacios) 
	Mientras cantidadDeEspacios > 0 Hacer
		espacios <- Concatenar(espacios, " ")
		cantidadDeEspacios <- cantidadDeEspacios - 1
	Fin Mientras
FinFuncion

Algoritmo PiramideNaturales
	Definir alturaPiramide, cantidadDeEspacios Como Entero
	
	Escribir "Ingrese la altura de la piramide"
	Leer alturaPiramide
	
	Para escalon <- 1 Hasta alturaPiramide Hacer
		cantidadDeEspacios <- alturaPiramide - escalon
		
		Escribir AgregarEspacio(cantidadDeEspacios, espacio) Sin Saltar
		
		Para valor_del_escalon <- 1 Hasta escalon Hacer
			Escribir ConvertirATexto(escalon) + " " Sin Saltar
		Fin Para
		
		Escribir ""
	Fin Para
FinAlgoritmo
