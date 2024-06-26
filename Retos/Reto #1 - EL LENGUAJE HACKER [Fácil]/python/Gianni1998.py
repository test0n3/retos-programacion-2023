#RETO 1
'''
    Escribe un programa que reciba un texto y transforme lenguaje natural a
    "lenguaje hacker" (conocido realmente como "leet" o "1337"). Este lenguaje
     se caracteriza por sustituir caracteres alfanuméricos.
    - Utiliza esta tabla (https://www.gamehouse.com/blog/leet-speak-cheat-sheet/)
      con el alfabeto y los números en "leet".
      (Usa la primera opción de cada transformación. Por ejemplo "4" para la "a")
 '''

abc_leet={
    'a': '4',
    'b': 'I3',
    'c': '[',
    'd': ')',
    'e': '3',
    'f': '|=',
    'g': '&',
    'h': '#',
    'i': '!',
    'j': ',_|',
    'k': '>|',
    'l': '|',
    'm': '|\\/|',
    'n': '^|',
    'o': '0',
    'p': '|*',
    'q': '(_,)',
    'r': '|2',
    's': '5',
    't': '7',
    'u': '(_)',
    'v': '\\/',
    'w': '\\/\\/',
    'x': '><',
    'y': 'j',
    'z': '2',
    "0": "o",
    "1": "L",
    "2": "R",
    "3": "E",
    "4": "A",
    "5": "S",
    "6": "b",
    "7": "T",
    "8": "B",
    "9": "g"
}
texto_leet=[]

texto = input('Escribe el texto a convertir el lenguaje hacker:\n')

for i in texto.lower():
    if i in abc_leet.keys():
        texto_leet.append(abc_leet[i])
    else:
        texto_leet.append(i)

print(''.join(texto_leet))

