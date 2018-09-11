//operadores aritmeticos
(function () {

    // modulo residuo
    let a = 5 % 2;
    console.log(a);

    // trunc
    let b = Math.trunc(5 / 2);
    console.log(b);


    let i = 1;
    i += 5; // +=  esto es igual i=i+5;
    console.log(i);
    i -= 10;
    console.log(i);
    i *= 2; // i= -4*2
    console.log(i);

    i **= 2; // -8*-8
    console.log(i);


    let binario = 0b10101010;
    let binario2 = 0b10001010;
    //               10001010
    binario &= binario2;
    console.log(binario);
})();



