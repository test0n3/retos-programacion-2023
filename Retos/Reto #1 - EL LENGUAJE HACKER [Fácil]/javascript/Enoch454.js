const alphabet = {
    a : '4',
    b : 'I3',
    c : '[',
    d : ')',
    e : '3',
    f : '|=',
    g : '&',
    h : '#',
    i : '1',
    j : ',_|',
    k : '>|',
    l : '1',
    m : '/\\/\\',
    n : '^/',
    o : '0',
    p : '|*',
    q : '(_,)',
    r : 'I2',
    s : '5',
    t : '7',
    u : '(_)',
    v : '\\/',
    w : '\\/\\/',
    x : '><',
    y : 'j',
    z : '2',
    1 : 'L',
    2 : 'R',
    3 : 'E',
    4 : 'A',
    5 : 'S',
    6 : 'b',
    7 : 'T',
    8 : 'B',
    9 : 'g',
    0 : 'o',

}

const transformar = text => {
    let output = text.toLowerCase().split("").map(x => {
        if(Object.keys(alphabet).indexOf(x) === -1){
            return x;
        }
        return alphabet[x];
    });
    return output.join("");
};

//prueba
console.log(transformar("Habia una vez, 3 empanadas!!!"));