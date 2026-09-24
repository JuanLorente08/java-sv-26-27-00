Algoritmo Tour3 
	// dise�o la matriz
	Dimensionar matriz[10,10]
		Para contFilas=1 Hasta 10 Con Paso 1 Hacer
			Para contColumnas=1  Hasta 10 Con Paso 1 Hacer
				// contFilas=1
				//contColumnas=1
				matriz[contFilas, contColumnas] = '.'
			Fin Para
		Fin Para
		
		definir fila como entero 
		definir columna como entero
		
		// 8 aliens en lugares aleatorios
		para Alien = 1 hasta 8 con paso 1 
			repetir 
				fila = Azar(10) + 1
				columna = azar(10) + 1
			Hasta Que matriz[fila, columna] = '.'
			matriz[fila, columna] = 'A';
		FinPara
		
		// 5 naves en lugares aleatorios
		para Nave = 1 hasta 5 con paso 1 
			repetir 
				fila = Azar(10) + 1
				columna = azar(10) + 1
			Hasta Que matriz[fila, columna] = '.'
			matriz[fila, columna] = 'N';
		FinPara
		
		// imprimi matriz
		Para contFilas=1  Hasta 10 Con Paso 1 Hacer
			Para contColumnas=1 Hasta 10 Con Paso 1 Hacer
				Escribir Sin Saltar matriz[contFilas, contColumnas], " "
			Fin Para
			escribir ""
		FinPara
		
FinAlgoritmo
