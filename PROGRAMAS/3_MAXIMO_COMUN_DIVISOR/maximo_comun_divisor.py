def maximo_comun_divisor(grande,peque):
    residuo = grande % peque
    while residuo !=0:
        grande = peque
        peque = residuo
        residuo = grande % peque
    return peque

print(maximo_comun_divisor(6983776800,5587021440))
