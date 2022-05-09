% warning('off' , 'all');
format long
1;
function f_siguiente = Fibonacci(n)
	f_actual = 0;
	f_siguiente = 1;
	for i=1:(n-1)
		auxiliar = f_actual + f_siguiente;
		f_actual  = f_siguiente;
		f_siguiente = auxiliar;
	end
end

Fibonacci(93)
