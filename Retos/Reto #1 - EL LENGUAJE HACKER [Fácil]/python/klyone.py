#!/usr/bin/env python3

leet_dict = {
    "a" : "4",
    "b" : "I3",
    "c" : "[",
    "d" : ")",
    "e" : "3",
    "f" : "|=",
    "g" : "&",
    "h" : "#",
    "i" : "1",
    "j" : ",_|",
    "k" : ">|",
    "l" : "1",
    "m" : " /\\/\\",
    "n" : "^/",
    "o" : "0",
    "p" : "|*",
    "q" : "(_,)",
    "r" : "I2",
    "s" : "5",
    "t" : "7",
    "u" : "(_)",
    "v" : "\\/",
    "w" : "\\/\\/",
    "x" : "><",
    "y" : "j",
    "z" : "2",
    "0" : "o",
    "1" : "L",
    "2" : "R",
    "3" : "E",
    "4" : "A",
    "5" : "S",
    "6" : "b",
    "7" : "T",
    "8" : "B",
    "9" : "g"
}

def translate(msg):
    leet_msg = ""

    for char in msg:
        char = char.lower()
        if char in leet_dict:
            leet_msg = leet_msg + leet_dict[char]
        else:
            leet_msg = leet_msg + char

    return leet_msg

if __name__ == "__main__":
    msg = "If you can read this you really need to get a life!"

    print(msg)
    print(translate(msg))
