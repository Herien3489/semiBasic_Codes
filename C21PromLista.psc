//Nombre: Eli Noe Herrera Loria
//Fecha: 29.09.2023
Algoritmo C21PromLista
	//Programa que calcule promedios guardandolos en una lista
	//Inicializamos todas nuestras variables
	Definir suma, lista Como Real;
	//El indice se llamara cantidad para guardar las cantidad de calificaciones
	definir cantidad como entero;
	
	//Pedimos al usuario la cantidad de calificaciones que quiera ingresar
	Escribir "Cuantas calificaciones quieres promediar??";
	leer cantidad;
	
	//Dimensionamos la lista con la cantidad que el ususario ingrese
	Dimensionar lista[cantidad];
	
	//Iniciamos el ciclo "para"
	para i = 1 Hasta cantidad con paso 1 hacer
		//Pedimos que ingrese las calificaciones del alumno
		Escribir "Calificacion obtenida";
		//Guardaremos las calificaciones el la lista para usarlas más adelante
		leer lista[cantidad];
		//Hacemos que la suma se vaya almacenando en una variable y le sumamos el valor ingresado
		suma = suma + lista[cantidad];
	FinPara
	//Aplicamos la formula el promedio
	suma = suma / cantidad;
	
	//Imprimimos el resultado
	Imprimir "el primedio es ", suma;
FinAlgoritmo
