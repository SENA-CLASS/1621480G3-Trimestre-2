//leer un arreglo y ordenarlo usando el metodo burbuja

(function () {
    let arreglo = new Array();
    let cantidad = parseInt(prompt("digite la cantdad de elemenos del arreglo"));

    for (let i = 0; i < cantidad; i++) {
        arreglo[i] = parseInt(prompt("digite el valor para el arreglo en la pocisión " + i));
    }
    document.write(arreglo + "<br/>");

    for (let i = 0; i < arreglo.length - 1; i++) {
        for (let j = (i + 1); j < arreglo.length; j++) {
            if (arreglo[i] > arreglo[j]) {
                let burbuja = arreglo[i];
                arreglo[i] = arreglo[j];
                arreglo[j] = burbuja;
            }
        }
    }
    document.write(arreglo + "<br/>");


})();
