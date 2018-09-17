(function () {
    let arreglo = [12, 34, 23, 67, 5, 3, 78];
    let arreglo2 = new Array(10);
    let arreglo3 = Array(5);

    for (let valor of arreglo) {
        console.log(valor);
    }

    for (let valor of arreglo2) {
        console.log(valor);
    }

    for (let valor of arreglo3) {
        console.log(valor);
    }

    console.log(arreglo.length);
    console.log(arreglo.push(1));
    arreglo.pop();
    arreglo.pop();
    arreglo.pop();
    console.log(arreglo);
    console.log(arreglo.sort((a, b) => a - b));


})();
