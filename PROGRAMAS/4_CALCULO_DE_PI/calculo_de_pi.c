
#include<stdio.h>
#include<math.h>

int main(){
	long double a = 0L, b = 1L; // intervalo.
	long double n = 100000L; // tamaño de la partición.
	long double h = (b-a)/n; // fineza de la partición.
	long double suma = 0L; // aproximación de la integral.

	for (int i=0;i<n-1;i++) suma += sqrtl(1 - (a+i*h) * (a+i*h));

	suma = h*((1-0) /2 + suma);
	printf("\n\n%.15Lf\n\n" , 4*suma);
	return 0;
}
