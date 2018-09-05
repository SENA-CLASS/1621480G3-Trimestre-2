var a = 5;

var A = 10;

console.log(A);


// comentario de linea

/**
sadfasdfasdf
 */


var a;
console.log('El valor de a es ' + a); // El valor de a es undefined

console.log('El valor de b es ' + b); // El valor de b es undefined
var b;


//console.log('El valor de c es ' + c); // Uncaught ReferenceError: c no está definida

let x;
console.log('El valor de x es ' + x); // El valor de x es undefined

//console.log('El valor de y es ' + y); // Uncaught ReferenceError: y no está definida
//let y;


var variable;

console.log(variable ==undefined);
console.log(variable ==0);
console.log(variable == false);
console.log(variable == null);

console.log(variable+2);

var r = null;
console.log(5+r);
console.log(null == r);

var i=10;
{
    var i=20;
    console.log(i);
}

function f() {
    aa=5;
    console.log(aa);
}
f();
    var aa; // hosting


// devolverá un valor undefined
var myvar = "1";

function hh() {
    console.log(myvar); // undefined
    var myvar = "2";
    console.log(myvar);
}

hh();


function impimir(a) {
    console.log(a);
}
function suma(a,b) {
    return a+b;
}

impimir(suma(3,3));


var perro ={
    nombre: "pili",
    sexo: "m",
    altura: function(){
       return this.peso()*5;
    },
    peso: function () {
        return this.diametro+20;
    },
    diametro: "12"
}


const VELOCIDAD_LUZ = 300000;



