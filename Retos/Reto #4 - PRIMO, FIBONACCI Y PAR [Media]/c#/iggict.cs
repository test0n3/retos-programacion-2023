/* Reto #4: PRIMO, FIBONACCI Y PAR
 * 
 * Enunciado:
 * 
 *  Escribe un programa que, dado un n�mero, compruebe y muestre si es primo, fibonacci y par.
 *      Ejemplos:
 *          - Con el n�mero 2, nos dir�: "2 es primo, fibonacci y es par"
 *          - Con el n�mero 7, nos dir�: "7 es primo, no es fibonacci y es impar"
 */

using System;

Console.Write("\nReto #4: PRIMO, FIBONACCI Y PAR");
Console.Write("\n-------------------------------\n");

do
{
    Console.Write("\nIntroduce un n�mero: ");

    int userInt = 0;

    try
    {
        userInt = Int32.Parse(Console.ReadLine() ?? "0");
    }
    catch (Exception)
    {
        Console.WriteLine($"\nERROR: Los par�metros de entrada no son v�lidos");
        continue;
    }

    Console.WriteLine($"{userInt} " +
        $"{(IsPrime(userInt) ? "es" : "no es")} primo, " +
        $"{(IsFibo(userInt) ? "" : "no es")} fibonacci y " +
        $"{(IsEven(userInt) ? "es par" : "es impar")}");

} while (true);

bool IsEven(int value) => value % 2 == 0;

//bool IsPrime(int value) => !Enumerable.Range(2,value-1).Any(i => value % i == 0 );

static bool IsPrime(int value)
{
    if (value <= 0)
        return false;

    for (int i = 2; i<value; i++)
    {
        if (value % i == 0)
            return false;
    }

    return true;
}

/// <remarks>Un n�mero n es Fibonacci si (5*n 2 + 4) o (5*n 2 � 4) es un cuadrado perfecto</remarks>
/// <see cref="http://en.wikipedia.org/wiki/Fibonacci_number#Recognizing_Fibonacci_numbers"/>
bool IsFibo(int n)
{
    bool isPerfectSquare(int x) => (int)Math.Sqrt(x) * (int)Math.Sqrt(x) == x;

    return isPerfectSquare(5 * n * n + 4) || isPerfectSquare(5 * n * n - 4);
}