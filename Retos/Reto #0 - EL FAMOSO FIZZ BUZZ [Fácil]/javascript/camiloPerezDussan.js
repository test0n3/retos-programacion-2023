/*
 * Escribe un programa que muestre por consola (con un print) los
 * números de 1 a 100 (ambos incluidos y con un salto de línea entre
 * cada impresión), sustituyendo los siguientes:
 * - Múltiplos de 3 por la palabra "fizz".
 * - Múltiplos de 5 por la palabra "buzz".
 * - Múltiplos de 3 y de 5 a la vez por la palabra "fizzbuzz".
 */

/*
 * Escribe un programa que muestre por consola (con un print) los
 * números de 1 a 100 (ambos incluidos y con un salto de línea entre
 * cada impresión), sustituyendo los siguientes:
 * - Múltiplos de 3 por la palabra "fizz".
 * - Múltiplos de 5 por la palabra "buzz".
 * - Múltiplos de 3 y de 5 a la vez por la palabra "fizzbuzz".
 */

let fizzBuzz = (number, i = 1) => {
    if (i <= number) {
        if (i % 3 == 0 && i % 5 == 0) console.log("fizzbuzz");
        else if (i % 3 == 0) console.log("fizz");
        else if (i % 5 == 0) console.log("buzz");
        else console.log(i)
        fizzBuzz(number, ++i)
    }
}
fizzBuzz(100)