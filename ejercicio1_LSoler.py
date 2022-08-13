# PYHTON - Introducción a la programación:
# Escribir el código en Python que permita realizar lo siguiente:

'''
Ejercicio 1) Crear una lista en Python denominada “Dueno” que contenga los siguientes valores:

    28957346,  Juan,  Perez, 4789689,  Belgrano 101

Dichos datos se corresponden  con los datos del dueño de un perro (DNI, nombre, apellido, teléfono y dirección). Muestre en pantalla el teléfono del dueño si el DNI es mayor a 26000000.
'''

dueno = [28957346, 'Juan', 'Perez', 4789689, 'Belgrano 101']

if(dueno[0] > 26000000):
    print (dueno[0])


'''
Ejercicio 5) Crear una tupla en Python con el nombre de “Historial” la cual contenga los siguientes valores:

    2350, 5960, 23000, 1000, 8900

Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Puppy”. Calcular el monto total gastado a lo largo del tiempo por atención de “Puppy”. Si el gasto efectuado es menor a 30000, mostrar en pantalla dicho resultado, caso contrario mostrar el mensaje “Gastos por encima de lo presupuestado”.
'''

historial = (2350, 5960, 23000, 1000, 8900)

counter = 0
suma = 0

for elem in historial:
    suma += elem
    counter += 1
    
if(suma < 30000):
    print(suma)
else:
    print("Gastos por encima de lo presupuestado")


'''
Ejercicio 10) Crear una lista denominada “Clientes” con los nombres de los diferentes  dueños de perros.

    Juan,  Mario,  Ariel,  Josefina,  Marianella.

Ordenarla alfabéticamente y mostrarla por pantalla.
'''

clientes = ['Juan',  'Mario',  'Ariel',  'Josefina',  'Marianella']

print(sorted(clientes))