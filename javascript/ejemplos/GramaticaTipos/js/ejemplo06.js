// literales arreglos

var cafes = ["Tostado Frances", "Colombiano", "Kona"];

console.log(cafes);
console.log(cafes.length);
console.log(cafes[0]);
console.log(cafes[1]);
console.log(cafes[2]);
console.log(cafes[3]);
for (let i = 0; i <cafes.length ; i++) {
 console.log(cafes[i]);
}


var asd = new Array("Tostado Frances", "Colombiano", "Kona");
console.log(asd);


class perro{
     raza;
     sexo;

    constructor(raza, sexo) {
        this._raza = raza;
        this._sexo = sexo;
    }

    get raza() {
        return this._raza;
    }

    set raza(value) {
        this._raza = value;
    }

    get sexo() {
        return this._sexo;
    }

    set sexo(value) {
        this._sexo = value;
    }
}



