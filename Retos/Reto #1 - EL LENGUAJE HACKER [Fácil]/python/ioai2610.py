hackerLanguage = {  'a':'4','b':'I3','c':'[','d':')','e':'3','f':'|=','g':'&','h':'#','i':'1','j':',_|',
                    'k':'>|','l':'1','m':'/\/\'','n':'^/','o':'0','p':'|*','q':'(_,)','r':'I2',
                    's':'5','t':'7','u':'(_)','v':'\/','w':'\/\/','x':'><','y':'j','z':'2'}

text = input("Escribe tu mensaje: ").lower()

for t in text:
    if t in hackerLanguage:
        text = text.replace(t,hackerLanguage[t])
print(text)

