"""
   Escribe un programa que reciba un texto y transforme lenguaje natural a "lenguaje hacker" (conocido realmente como "leet" o "1337"). 
   Este lenguaje se caracteriza por sustituir caracteres alfanuméricos.
   Utiliza esta tabla (https://www.gamehouse.com/blog/leet-speak-cheat-sheet/) con el alfabeto y los números en "leet".
   (Usa la primera opción de cada transformación. Por ejemplo "4" para la "a")
"""

diccionario = ( ("a","4"), ("b", "|3"), ("c", "["), ("d", ")"), ("e", "3"), ("f", "|="), ("g", "&" ), ("h", "#"), 
               ("i", "1"), ("j", ",_|"), ("k", ">|"), ("l", "|"), ("m", "/\/\\"), ("n", "^/"), ("o", "0"), ("p", "|*"), 
               ("q", "(_,)"), ("r", "I2"), ("s", "5"), ("t", "7"), ("u","(_)"), ("v", "\/"), ("w", "\/\/"), ("x", "><"), 
               ("y", "j"), ("z", "2") )
frase = input("Introduce un texto a cifrar: ")
fraseLeet = frase.lower()
for normal, leet in diccionario:
   fraseLeet = fraseLeet.replace(normal, leet)

print('Frase Original: ' + frase)
print ('Frase Cifrada: ' + fraseLeet)
