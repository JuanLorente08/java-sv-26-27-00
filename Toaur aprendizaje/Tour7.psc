Algoritmo tour7
	Dimensionar matriz[6,5] 
		// Poner puntos en todos los espacios
		Para contFilas = 1 Hasta 6 con Paso 1 Hacer
			Para contColumnas=1  Hasta 5 Con Paso 1 Hacer
				// contFilas=1
				//contColumnas=1
				matriz[contFilas, contColumnas] = 'L'
			Fin Para
		Fin Para
		
		Definir fila Como Entero
		definir columna como entero 
		
		//poner 12 habitaciones aleatorias ocupadas
		para i=1 hasta 12 con paso 1 hacer 
			repetir 
				fila = Azar (6)+1
				columna  =Azar(5)+1
			hasta que matriz(fila, columna) = 'L'
			matriz(fila, columna) = 'O'
		FinPara
		Para contFilas=1  Hasta 6 Con Paso 1 Hacer
			Para contColumnas=1 Hasta 5 Con Paso 1 Hacer
				Escribir Sin Saltar matriz[contFilas, contColumnas], " "
			Fin Para
			escribir ""
		FinPara
		
		//contar cuantas habotaciones ocupadas hay en cada planta
		Para contFilas = 1 Hasta 6 Con Paso 1 Hacer
			ocupadasp = 0
			
			Para contColumnas = 1 Hasta 5 Con Paso 1 Hacer
				Si matriz[contFilas, contColumnas] == 'O' Entonces
					ocupadasp = ocupadasp + 1
				Fin Si
			Fin Para
			
			Escribir "En la planta ", contFilas, " hay ", ocupadasp, " habitaciones ocupadas."
		Fin Para
		
		totalO <- 0
		Para contFilas = 1 Hasta 6 Con Paso 1 Hacer
			Para contColumnas = 1 Hasta 5 Con Paso 1 Hacer
				Si (matriz[contFilas, contColumnas] == 'O') Entonces
					totalO = totalO + 1
				Fin Si
			Fin Para
		Fin Para
		
		escribir "plazas totales ocupadas"
		escribir totalO
		
FinAlgoritmo
