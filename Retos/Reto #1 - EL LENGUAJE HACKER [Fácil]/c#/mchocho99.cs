public static readonly Dictionary<char, string> Dictionary = new Dictionary<char, string>()
        {
            {'A', "4"},
            {'B', "I3"},
            {'C', "["},
            {'D', ")"},
            {'E', "3"},
            {'F', "|="},
            {'G', "&"},
            {'H', "#"},
            {'I', "1"},
            {'J', ",_|"},
            {'K', ">|"},
            {'L', "£"},
            {'M', "/\\/\\"},
            {'N', "^/"},
            {'O', "0"},
            {'P', "|*"},
            {'Q', "(_,)"},
            {'R', "I2"},
            {'S', "5"},
            {'T', "7"},
            {'U', "(_)"},
            {'V', "\\/"},
            {'W', "\\/\\/"},
            {'X', "><"},
            {'Y', " j"},
            {'Z', "2"},
            {'0', "o"},
            {'1', "L"},
            {'2', "R"},
            {'3', "E"},
            {'4', "A"},
            {'5', "S"},
            {'6', "b"},
            {'7', "T"},
            {'8', "B"},
            {'9', "g"},
            {' ', " "}
		};

        public static void reto1(string texto)
        {
            /*
             * Escribe un programa que reciba un texto y transforme lenguaje natural a
             * "lenguaje hacker" (conocido realmente como "leet" o "1337"). Este lenguaje
             *  se caracteriza por sustituir caracteres alfanuméricos.
             * - Utiliza esta tabla (https://www.gamehouse.com/blog/leet-speak-cheat-sheet/) 
             *   con el alfabeto y los números en "leet".
             *   (Usa la primera opción de cada transformación. Por ejemplo "4" para la "a")
             */
            string upperText = texto.ToUpper();
            for (int i = 0; i < upperText.Length; i++)
            {
                Console.Write(Dictionary[upperText[i]]);
            }
        }
