#include <stdio.h>

unsigned long long int fibonacci(int n) {
	unsigned long long int f_actual = 0, f_siguiente = 1, auxiliar;
	while(--n>0){
		auxiliar = f_actual + f_siguiente;
		f_actual = f_siguiente;
		f_siguiente = auxiliar;
	}
	return f_siguiente;	
}

int main() {
	printf("%llu\n", fibonacci(93));
	return 0;
}
