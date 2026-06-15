Algoritmo InvertirTexto
	Definir frase, frase_invertida Como Caracter
	Definir longitud_de_la_frase Como Entero
	
	// pedir frase al usuario
	Escribir "ingrese una frase"
	Leer frase
	
	longitud_de_la_frase <- Longitud(frase)
	frase_invertida <- ""
	
	// bucle invertido para iniciar desde la ultima letra hasta la primera
	Para indice_de_la_letra <- longitud_de_la_frase Hasta 1 Con Paso -1 Hacer
		frase_invertida <- frase_invertida + SubCadena(frase, indice_de_la_letra, indice_de_la_letra)
	Fin Para
	
	// mostrar resultado
	Escribir "Tu frase: " + frase
	Escribir "Tu frase invertida: " + frase_invertida
FinAlgoritmo
