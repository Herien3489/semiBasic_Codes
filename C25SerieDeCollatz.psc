//Nombre: Eli Noe Herrera Loria
//Fecha: 06.10.2023
Algoritmo C25SerieDeCollatz
	//Definimos variables
	Definir n Como real;
	Definir graf Como Caracter;
	
	//Pedimos el numero para la sucesion
	Escribir 'Dame el primer numero';
	leer n;
	
	m = n;
	
	//Creamos una espacio vacio para el string
	graf = '';
	//Creamos un contador para el numero de operaciones
	cont = 1;
	//Creamos el ciclo para que caundo llegue a 1 pare
	Mientras n <> 1 Hacer
		cont = cont + 1;
		
		//Condicionamos a n para cuando es un numero par
		si n es par Entonces
			//Cuando es par se divide entre 2
			n = n / 2;
			//Convertimos a texto
			var = convertiratexto(n);
			//Almacenamos nuestro string para despues imprimirlo
			graf = graf + ' ' + var;
			//Si no es par, calculamos otra cosa
			
		SiNo
			n = n * 3 + 1;
			var = convertiratexto(n);
			graf = graf + ' ' + var;
			
		FinSi
	FinMientras
	
	para i=1 hasta cont Hacer
		graf2 = graf2 + '*';
	FinPara
	
	//Imprimimos nuesttro resultado final
	Imprimir m, '', graf;
	Imprimir m, ': ', graf2;
FinAlgoritmo
