//Nombre: Eli Noe Herrera Loria
//Fecha: 20.09.2023
Algoritmo C19Vector
	//Definimos las variables 
	Definir lista, indice, num_grande Como Entero;
	//Le ponemos el limite a la lista
	Dimensionar lista[5];
	//Instrucciones para que el usuario
	//Ingrese los numeros a utilizar
	Escribir "Escribe los 5 numeros enteros";
	
	//Guardamos los datos en la lista
	Para indice = 1 hasta 5 Hacer
		Leer lista[indice];
		//Imprimir 
	FinPara
	//Asumiremos que el primer dato es el numero mas grande
	num_grande = lista[1];
	//Comparamos cada elemento en la lista con el hipotetico
	//primer numero mas grande
	Para indice = 1 Hasta 5 Hacer
		//Seleccionamos el 1-enesimo elemento y comparamos
		Si num_grande < lista[indice] Entonces
			//Si es mas grande, entonces los reemplaza
			num_grande = lista[indice];
		FinSi
	FinPara
	//Imprimimos el resultado
	Imprimir "El numero más grande de la lista es ", num_grande;
FinAlgoritmo
