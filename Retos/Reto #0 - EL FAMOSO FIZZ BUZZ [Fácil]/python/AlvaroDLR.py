'''
 * Escribe un programa que muestre por consola (con un print) los
 * números de 1 a 100 (ambos incluidos y con un salto de línea entre
 * cada impresión), sustituyendo los siguientes:
 * - Múltiplos de 3 por la palabra "fizz".
 * - Múltiplos de 5 por la palabra "buzz".
 * - Múltiplos de 3 y de 5 a la vez por la palabra "fizzbuzz".
'''

num = 1

while num <= 100:
    
    if num % 3 == 0 and num % 5 == 0:
        # print(num, "-> fizzbuzz")
        print("fizzbuzz")
    elif num % 5 == 0:
        # print(num, "-> buzz")
        print("buzz")
    elif num % 3 == 0:
        # print(num, "-> fizz")
        print("fizz")
    else:
        print(num)
    
    num += 1