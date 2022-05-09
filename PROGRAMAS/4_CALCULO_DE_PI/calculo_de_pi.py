import numpy as np

a = 0
b = 1
n = 100000
h = (b-a) / n
suma = 0

for i in range(n):
    suma += np.sqrt(1- (a+i*h) ** 2)

suma = h * ((1-0)/2 + suma)

print(4*suma)
