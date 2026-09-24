Algoritmo Tour10
	Dimensionar matriz[8,8] 
		// dise?o de la matriz
		Para contFilas = 1 Hasta 8 con Paso 1 Hacer
			Para contColumnas=1  Hasta 8 Con Paso 1 Hacer
				// contFilas=1
				//contColumnas=1
				matriz[contFilas, contColumnas] = '.'
			Fin Para
		Fin Para
		
		// poner agua en todo el tablero
		Para contFilas = 1 Hasta 8 Con Paso 1 Hacer
			Para contColumnas = 1 Hasta 8 Con Paso 1 Hacer
				matriz[contFilas, contColumnas] = '~'
			Fin Para
		Fin Para
		
		//  comoloco 10 elementos A sin repetici?n
		Para i = 1 Hasta 10 Con Paso 1 Hacer
			Repetir
				fila = Azar(8) + 1
				columna = Azar(8) + 1
			Hasta Que matriz[fila, columna] = '~'
			matriz[fila, columna] = 'A'
		Fin Para
		
		// coloco 5 elementos r sin repeticion
		Para i = 1 Hasta 5 Con Paso 1 Hacer
			Repetir
				fila = Azar(8) + 1
				columna = Azar(8) + 1
			Hasta Que matriz[fila, columna] = '~'
			matriz[fila, columna] = 'R'
		Fin Para
		
		// coloco 3 elementos B sin repetici?n
		Para i = 1 Hasta 3 Con Paso 1 Hacer
			Repetir
				fila = Azar(8) + 1
				columna = Azar(8) + 1
			Hasta Que matriz[fila, columna] = '~'
			matriz[fila, columna] = 'B'
		Fin Para
		
		// --- EXTRA: DIBUJAR TABLERO PARA VERIFICACI?N ---
		Escribir "=== TABLERO GENERADO ==="
		Escribir "  1 2 3 4 5 6 7 8"
		Para contFilas = 1 Hasta 8 Con Paso 1 Hacer
			Escribir ConvertirATexto(contFilas) + " " Sin Saltar
			Para contColumnas = 1 Hasta 8 Con Paso 1 Hacer
				Escribir matriz[contFilas, contColumnas], " " Sin Saltar
			Fin Para
			Escribir "" 
		Fin Para
		Escribir "========================"
		Escribir ""
		
		// 5. RECUENTO TOTAL: Analizar y contar cada tipo en todo el tablero
		totalA = 0
		totalR = 0
		totalB = 0
		Para contFilas = 1 Hasta 8 Con Paso 1 Hacer
			Para contColumnas = 1 Hasta 8 Con Paso 1 Hacer
				Si matriz[contFilas, contColumnas] = 'A' Entonces
					totalA = totalA + 1
				FinSi
				Si matriz[contFilas, contColumnas] = 'R' Entonces
					totalR = totalR + 1
				FinSi
				Si matriz[contFilas, contColumnas] = 'B' Entonces
					totalB = totalB + 1
				FinSi
			Fin Para
		Fin Para
		Escribir "RECUENTO TOTAL DEL TABLERO:"
		Escribir "-> Elementos A encontrados: ", totalA
		Escribir "-> Elementos R encontrados: ", totalR
		Escribir "-> Elementos B encontrados: ", totalB
		Escribir "---------------------------------------------"
		
		// 6. ANALIZAR UNA FILA ELEGIDA
		Escribir "Introduce el n?mero de fila que deseas analizar (1 a 8): "
		Leer filaElegida
		
		Si filaElegida >= 1 Y filaElegida <= 8 Entonces
			cuentaA_Fila = 0
			cuentaR_Fila = 0
			cuentaB_Fila = 0
			cuentaAgua_Fila = 0
			
			// Recorremos las columnas de la fila seleccionada
			Para contColumnas = 1 Hasta 8 Con Paso 1 Hacer
				Segun matriz[filaElegida, contColumnas] Hacer
					'A': cuentaA_Fila = cuentaA_Fila + 1
					'R': cuentaR_Fila = cuentaR_Fila + 1
					'B': cuentaB_Fila = cuentaB_Fila + 1
					De Otro Modo: cuentaAgua_Fila = cuentaAgua_Fila + 1
				Fin Segun
			Fin Para
			
			Escribir "An?lisis de la fila ", filaElegida, ":"
			Escribir " - Cantidad de A: ", cuentaA_Fila
			Escribir " - Cantidad de R: ", cuentaR_Fila
			Escribir " - Cantidad de B: ", cuentaB_Fila
			Escribir " - Cantidad de Agua (~): ", cuentaAgua_Fila
		Sino
			Escribir "Fila no v?lida."
		FinSi
		Escribir "--------------------------------------------"
		

		// 7. CONSULTAR UNA COORDENADA
		Escribir "Consulta de coordenadas individuales:"
		Escribir "Introduce la fila (1 a 8): "
		Leer consultaFila
		Escribir "Introduce la columna (1 a 8): "
		Leer consultaColumna
		
		Si consultaFila >= 1 Y consultaFila <= 8 Y consultaColumna >= 1 Y consultaColumna <= 8 Entonces
			// CORRECCI?N: Guardamos el valor en una variable primero
			Definir elementoEncontrado Como Caracter
			elementoEncontrado = matriz[consultaFila, consultaColumna]
			
			Escribir "En la posici?n [", consultaFila, ", ", consultaColumna, "] hay un elemento: ", elementoEncontrado
		Sino
			Escribir "Coordenadas fuera del tablero."
		FinSi
    
FinAlgoritmo

