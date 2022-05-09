
def Fibo(n)
  f_actual = 0
  f_siguiente = 1
  n.times{ 
    auxiliar = f_actual + f_siguiente
    f_actual = f_siguiente
    f_siguiente = auxiliar
  }
  f_actual
end

puts Fibo(46)
