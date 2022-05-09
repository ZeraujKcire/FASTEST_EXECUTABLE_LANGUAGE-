
a = 0 # intervalo
b = 1 # intervalo
n = 100_000 # tamaño de la partición.
# h = (b-a) / n # fineza de la partición.
h = 0.00001
format('%<num>0.6f', num: h)
suma = 0 # aproximación de la integral
format('%<num>0.6f', num: suma)

(0..(n-1)).each {|i| suma += Math.sqrt(1-((a+i*h) * (a+i*h)))}

suma = h*((1-0) /2 + suma)

puts 4*suma
