Algoritmo tour1
	Dimensionar matriz[8,8]
	// Poner puntos en todos los espacios
		Para contFilas=1 Hasta 8 con Paso 1 Hacer
			Para contColumnas=1  Hasta 8 Con Paso 1 Hacer
				// contFilas=1
				//contColumnas=1
				matriz[contFilas, contColumnas] = '.'
			Fin Para
		Fin Para
		
		definir fila Como Entero
		definir columna como entero
		
		// colocar 1 T al azar 
		para colocT = 1 hasta 1 con paso 1 
			fila = Azar(8) + 1
			columna = Azar(8) +1
			matriz[fila, columna] = 'T';
		FinPara
		
		// Mostrar la amtriz
		Para contFilas=1  Hasta 8 Con Paso 1 Hacer
			Para contColumnas=1 Hasta 8 Con Paso 1 Hacer
				Escribir Sin Saltar matriz[contFilas, contColumnas], " "
			Fin Para
			// [1,1], [1,2], ...
			escribir ""
		FinPara
		
		
FinAlgoritmo
