
def Fibonacci(n):
    f_actual = 0
    f_siguiente = 1
    for i in range(n-1):
        auxiliar = f_actual + f_siguiente
        f_actual = f_siguiente
        f_siguiente = auxiliar
    return f_siguiente

# print(Fibonacci(93))
