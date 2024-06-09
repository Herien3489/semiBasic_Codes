//Nombre: Eli Noe Herrera Loria
//Fecha: 25.10.2023

Algoritmo AproximacionDePI
	Definir suma, resta, x, aprox como real;
	Definir iteraciones como entero;
	
	//Pedimos el numero de iteraciones al usuario
	Imprimir 'Ingresa el valor de iteraciones que hará para PI';
	leer iteraciones;
	
	//Creamos contadores para el denominador que irá cambiando
	conts = -3;
	contr = -1;
	
	//Realizaremos las operaciones hasta llegar al numero de iteraciones
	para i = 1 hasta iteraciones Hacer
		
		//Como dice la formula 4*(1- 1/3 + 1/5 - 1/7 ...) para el primer numero se suma y Para 
		//el segundo se resta, entonces si el indice 1 se suma y el indice 2 se resta asi sucesivamente
		//entonces si i es impar se sumara y sino se restara
		si i es impar Entonces
			conts = conts + 4;
			suma = suma + (1 / conts);
		SiNo
			contr = contr + 4;
			resta = resta + (1 / contr);
		FinSi
		
	FinPara
	
	//Hacemos la operacion final que multiplicara a 4
	x = suma - resta;
	aprox = 4 * (x);
	
	//Imprimimos resultado
	Imprimir aprox;
FinAlgoritmo
