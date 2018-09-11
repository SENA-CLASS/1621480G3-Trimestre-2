(function () {
    let opcion = prompt("digite su opcion");

    let a, b;
    a = parseInt(prompt("digite el numero: "));
    b = parseInt(prompt("digite el numero: "));

    switch (opcion) {
        case "1":
        case "a":
            alert("la suma es: " + (a + b));
            break;
        case "2":
        case "b":
            alert("la suma es: " + (a - b));
            break;
        default:
            alert("esta opción no la conosco");

    }
})();
