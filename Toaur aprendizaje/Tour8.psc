 Algoritmo Tour8
	Dimensionar matriz[10,10] 
		// Poner puntos en todos los espacios
		Para contFilas = 1 Hasta 10 con Paso 1 Hacer
			Para contColumnas=1  Hasta 10 Con Paso 1 Hacer
				// contFilas=1
				//contColumnas=1
				matriz[contFilas, contColumnas] = 'L'
			Fin Para
		Fin Para
		
		Definir fila Como Entero
		definir columna como entero 
		
		// establecer la posicion de los coches aleatoria
		para i=1 hasta 5 con paso 1 hacer 
			repetir 
				fila = Azar (10)+1
				columna  =Azar(10)+1
			hasta que matriz(fila, columna) = 'L'
			matriz(fila, columna) = 'O'
		FinPara
		
		Definir filaU, columnaU Como Entero
		
		// defininos los rengos entre los que debe estar el numero a introducir
		// definimos rangos de la fila
		Repetir
			Escribir "Introduce la fila: "
			Leer filaU
			Si filaU < 1 O filaU > 10 Entonces
				Escribir "El numero no se encuentra entre 0 y 10"
			FinSi
		Hasta Que filaU >= 1 Y filaU <= 10
		
		
		// definimos rangos de la columna
		Repetir
			Escribir "Introduce la columna a consultar (1 a 10):"
			Leer columnaU
			Si columnaU < 1 O columnaU > 10 Entonces
				Escribir "El numero no se encuentra entre 0 y 10"
			FinSi
		Hasta Que columnaU >= 1 Y columnaU <= 10
		
		
		Si matriz[filaU, columnaU] == 'O' Entonces
			Escribir "En la posici�n (", filaU, ",", columnaU, ") esta ocupado."
		Sino
			Escribir "La posici�n (", filaU, ",", columnaU, ") est� libre."
	FinSi
		
FinAlgoritmo
// no imprimimos la matriz porque no lo requiere