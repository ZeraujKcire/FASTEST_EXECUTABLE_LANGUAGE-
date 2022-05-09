
#include<stdio.h>

long long int max_comun_div(long int grande , long int peque){
	int residuo;
	residuo = grande % peque;
	while (residuo != 0) {
		grande = peque;
		peque  = residuo;
		residuo = grande % peque;
	}
	return peque;
}

int main(){
	printf("\n\n%Ld\n\n" ,  max_comun_div(6983776800,5587021440));
}
