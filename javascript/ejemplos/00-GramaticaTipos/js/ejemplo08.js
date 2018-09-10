// 1. leer dos numero enteros y decir cual es el mayor
(function () {
    let numeroLeido1 = parseInt(prompt("digite un numero: "));
    let numeroLeido2 = parseInt(prompt("digite un numero: "));

    if (numeroLeido1 !== numeroLeido2) {
        if (numeroLeido1 > numeroLeido2) {
            alert("numero mayor es: " + numeroLeido1);
        } else {
            alert("numero mayor es: " + numeroLeido2);
        }
    } else {
        alert("los dos nuemros son iguales");
    }
})();
