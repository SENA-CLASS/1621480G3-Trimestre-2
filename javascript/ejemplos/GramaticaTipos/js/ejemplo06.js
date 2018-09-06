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

var arreglo = [1, 3, 444, 6, 88, 4, 3, 3, 1];

// estructurado
mayor = arreglo[0];
for (let i = 0; i < arreglo.length; i++) {
    if (arreglo[i] > mayor) {
        mayor = arreglo[i];
    }
}
console.log(mayor);

// funcional
console.log(arreglo.sort(function (a, b) {
    return a - b
})[arreglo.length - 1]);
// funcional arrow function (lambda)
console.log(arreglo.sort((a, b) => a - b)[arreglo.length - 1]);



