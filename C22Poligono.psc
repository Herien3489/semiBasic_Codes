//Nombre: Eli Noe Herrera Loria
//Fecha: 29.09.2023
Algoritmo C22Poligono
	//Programa que calcule el area de un poligono regular
	//Definimos variables
	Definir area, medida como real;
	Definir lados Como Entero;
	
	//Recibimos los datos del usuario
	Escribir "Cuantos lados tiene??";
	leer lados;
	
	Escribir "Cuanto miden?";
	leer medida;
	
	//Creamos una condicion para no poner menos de 3 lados
	Si lados <= 2 Entonces
		Escribir "No existe un poligono de 3 lados";
	FinSi
	
	//Creamos las operaciones con los datos del usuario
	//formula del angulo de un poligono
	angulo = 360/(2*lados);
	
	//Como pseint solo acepta radianes, convertimos los grados
	//a radianes y la formula es la siguiente
	rad_angulo = angulo / (180/PI);
	
	//Calculamos la tangente con el angulo en radianes
	tangente = tan(rad_angulo);
	
	//Calculamos la formula del apotema
	apotema = medida/(2*tangente);
	
	//formula del area de un poligono regular
	area = (medida * lados * apotema)/2;
	
	//Imprimimos el area del poligono
	Imprimir "el area es ", area;
	
	
	
FinAlgoritmo
