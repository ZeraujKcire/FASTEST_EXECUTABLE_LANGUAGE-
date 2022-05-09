
a = 0 # intervalo
b = 1 # intervalo
n = 100000 # tamaño de la partición.
h = (b-a) /n # fineza de la partición.
suma = 0 # aproximación de la integral

for(i in 1:n-1) suma = suma + sqrt(1 - (a+i*h) **2)

suma = h*(0.5 + suma)
sprintf(4*suma, fmt = "%#.15f")
