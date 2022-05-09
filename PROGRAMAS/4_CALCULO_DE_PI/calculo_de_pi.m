format long
b = 1;
a = 0;
n= 100000;
h  = (b-a)/n;
suma = 0;

for i=1:(n-1)
	suma += sqrt(1-(a+i*h) ** 2);
endfor;
suma = h*[(1 - 0)/2+suma];
disp(4*suma)
