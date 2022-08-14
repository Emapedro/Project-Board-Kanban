# Ejercicio Nº2 de Python

dueno2 = [23546987, 'Maria', 'Perez', 4789689, 'Pueyrredon  811']
otro = ['DNI:', 'nombre:', 'apellido:', 'teléfono:', 'dirección:']
otra = []
for i in range(len(dueno2)):
    if i != 0 and i != 2:
        otra.append(dueno2[i])
        print(otro[i], dueno2[i], end='   ')
print('\nDueño 2:', otra)

#  ejercicio 6


def func():
    conteo = 0
    total = 0
    for m in Historial2:
        total += m
        if m > 5000:
            conteo += 1
    return print(total, conteo)


Historial2 = (23500, 5960, 2300, 10200, 8900)
print('total gastado de Frida: ', sum(Historial2))
func()

#  ejercicio 9


def funcion():
    mayor = 0
    for n in historial5:
        if mayor < n:
            mayor = n
    return mayor


historial5 = (8520, 9510, 7530, 3570, 1590)
print('Valor maximo gastado de toto: ', max(historial5))
print('Valor maximo gastado de toto: ', funcion())

#  ejercicio 10
clientes = ['Juan', 'Mario', 'Ariel', 'Josefina', 'Marianella']
clientes.sort()
print(f'clientes: {clientes}')
