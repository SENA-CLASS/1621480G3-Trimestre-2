

let numero1 = parseInt(prompt("digite el primer numero"));
let numero2 = parseInt(prompt("digite el primer numero"));

try {

    if(numero2 ===0){
        throw "división por cero no es valida";
    }else{
        resultado = numero1/numero2;
    }
}catch (e) {
    alert(e);
}



alert(resultado);
