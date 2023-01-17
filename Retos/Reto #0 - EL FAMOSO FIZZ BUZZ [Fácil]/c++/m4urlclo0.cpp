/*
 * Escribe un programa que muestre por consola (con un print) los
 * n�meros de 1 a 100 (ambos incluidos y con un salto de l�nea entre
 * cada impresi�n), sustituyendo los siguientes:
 * - M�ltiplos de 3 por la palabra "fizz".
 * - M�ltiplos de 5 por la palabra "buzz".
 * - M�ltiplos de 3 y de 5 a la vez por la palabra "fizzbuzz".
 */

#include <iostream>

int main() {
	for (int i = 1; i <= 100; i++) {
		if (i % 3 == 0 && i % 5 == 0) {
			std::cout << "fizzbuzz" << std::endl;
		} 
		else if (i % 5 == 0) {
			std::cout << "buzz" << std::endl;
		} 
		else if (i % 3 == 0) {
			std::cout << "fizz" << std::endl;
		} 
		else {
			std::cout << i << std::endl;
		}
	}
	return 0;
}