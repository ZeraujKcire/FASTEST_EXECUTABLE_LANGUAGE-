
Fib  = function(n) {
	f_actual =0
	f_siguiente = 1
	for(i in 1:n-2) {
		auxiliar = f_actual + f_siguiente
		f_actual = f_siguiente
		f_siguiente = auxiliar
	}
	return(f_actual)
}

paste0(Fib(46))
