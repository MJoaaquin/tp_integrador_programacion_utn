Funcion es_vocal <- EsVocal(letra) 
	Definir es_vocal Como Logico
	Definir letra_minuscula Como Caracter
	
	// cambiar todo a miniscula
	letra_minuscula <- Minusculas(letra)
	
	// si es vocal devuelve Verdadero, de otro modo devuelve Falso
	Segun letra_minuscula Hacer
		"a":
			es_vocal <- Verdadero
		"e":
			es_vocal <- Verdadero
		"i":
			es_vocal <- Verdadero
		"o":
			es_vocal <- Verdadero
		"u":
			es_vocal <- Verdadero
		De Otro Modo:
			es_vocal <- Falso
	Fin Segun
FinFuncion

Algoritmo ContadorDeVocales
	Definir frase, letra_a_evaluar Como Caracter
	Definir longitud_de_la_frase, contador_de_vocales Como Entero
	
	Escribir "Ingrese una palabra o frase"
	Leer frase
	
	longitud_de_la_frase <- Longitud(frase)
	contador_de_vocales <- 0
	
	Para indice_de_la_letra <- 1 Hasta longitud_de_la_frase Hacer
		letra_a_evaluar <- SubCadena(frase, indice_de_la_letra, indice_de_la_letra)
		
		Si EsVocal(letra_a_evaluar) Entonces
			contador_de_vocales = contador_de_vocales + 1
		Fin Si
	Fin Para
	
	Escribir "La palabra " + frase +  " tiene " + ConvertirATexto(contador_de_vocales) + " vocales"
FinAlgoritmo
