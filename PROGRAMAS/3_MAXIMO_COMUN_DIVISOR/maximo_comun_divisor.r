
max_comun_div  = function(grande , peque) {
	residuo = grande %% peque
	while (residuo !=0) {
		grande = peque
		peque = residuo
		residuo = grande %% peque
	}
	return(peque)
}

max_comun_div(6983776800,5587021440)
