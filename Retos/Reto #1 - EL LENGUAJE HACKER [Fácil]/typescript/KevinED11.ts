interface ObjetoHacker {
  [letter: string]: string;
}


const letters: ObjetoHacker = {
    A: "4",
    B: "13",
    C: "[",
    D: ")",
    E: "3",
    F: "|=",
    G: "&",
    H: "#",
    I: "1",
    J: ",_|",
    K: ">|",
    L: "1",
    M: "/\\/\\",
    N: "^/",
    O: "0",
    P: "|*",
    Q: "(_,)",
    R: "12",
    S: "5",
    T: "7",
    U: "(_)",
    V: "\\/",
    W: "\\/\\/",
    X: "><",
    Y: "j",
    Z: "2",
    0: "O",
    1: "L",
    2: "R",
    3: "E",
    4: "A",
    5: "S",
    6: "b",
    7: "T",
    8: "B",
    9: "g",
};



const textToTextHacker = (text: string): string => {
  let hackerText: string = ""
  let userText: string[] = text.toUpperCase().split("")

    userText.forEach((l) => {
    if (l in letters) {
					hackerText += letters[l];
		} 
  })

  return hackerText
  }


  console.log(textToTextHacker("kevin asael"))


