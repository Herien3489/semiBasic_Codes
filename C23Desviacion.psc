//Nombre: Eli Noe Herrera Loria
//Fecha: 04.10.2023
Algoritmo C23Desviacion
	
	//Definimos nuestras variables
	Definir n como entero;
	Definir lista como real;
	
	//Pedimos la cantidad de datos que se ingresaran
	Escribir "Ingresa cuantos datos son";
	leer n;
	
	//Dimensionar la lista con la cantidad anterior "n"
	dimensionar lista[n];
	
	//Iniciamos el ciclo para ingresar las calificaciones
	para indice = 1 hasta n Hacer
		//Ingresamos las calificaciones n veces
		Escribir 'Ingresa la calificacion';
		leer lista[indice];
		
		//sumamos la lista a la suma
		suma = suma + lista[indice];
		
	FinPara
	//Calculamos el promedio 
	prom = suma / n;
	
	//Inciamos el ciclo para sustituir la formula
	para indice = 1 hasta n Hacer
		suma2 = suma2 + (lista[indice] - prom)^2 / (n - 1);
		
	FinPara
	//Calculamos la parte final con la desviacion sacando raiz a suma2
	desv = raiz(suma2);
	
	//Imprimimos el valor de el promedio y la desviacion
	Imprimir 'el promedio es ', prom;
	Imprimir 'La desviacion es ', desv;
	
FinAlgoritmo
