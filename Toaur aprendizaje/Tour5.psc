Algoritmo Tour5
	Dimensionar matriz[10,10] 
		// Poner puntos en todos los espacios
		Para contFilas=1 Hasta 10 con Paso 1 Hacer
			Para contColumnas=1  Hasta 10 Con Paso 1 Hacer
				// contFilas=1
				//contColumnas=1
				matriz[contFilas, contColumnas] = '.'
			Fin Para
		Fin Para
		
		definir fila Como Entero
		definir columna Como Entero
		
		// poner 10 H de forma aleatoria y si que conincidan
		para i=1 hasta 15 con paso 1 hacer 
			repetir 
				fila = Azar (10)+1
				columna  =Azar(10)+1
			hasta que matriz(fila, columna) = '.'
			matriz(fila, columna) = 'H'
		FinPara
		
		// imprimi matriz
		Para contFilas=1  Hasta 10 Con Paso 1 Hacer
			Para contColumnas=1 Hasta 10 Con Paso 1 Hacer
				Escribir Sin Saltar matriz[contFilas, contColumnas], " "
			Fin Para
			escribir ""
		FinPara
		
		//contar las H que hay y su ubicaci�n
		Para contFilas = 1 Hasta 10 Con Paso 1 Hacer
			Para contColumnas = 1 Hasta 10 Con Paso 1 Hacer
				Si (matriz[contFilas, contColumnas] == 'H') Entonces
					Escribir "Se encontr� una H en la Fila: ", contFilas, "  Columna: ", contColumnas
				Fin Si
			Fin Para
		FinPara
		
		
FinAlgoritmo
