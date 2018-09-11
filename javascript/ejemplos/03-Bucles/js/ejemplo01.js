(function () {
    for (let i = 0; i < 10; i++) {
        console.log(i);
    }

    for (let i = 0; i < 10; i++) {


    }


    let i = 0; // se puede ejecutar 0 muchas veces
    while (i < 10) {

        i++;
    }


    let j = 0; // este se ejecuta 1 o muchas
    do {

        j++;
    } while (j <= 10);


    for (let k = 0; k < 10; k += 2) {
        console.log(k);
    }

    let k = 0
    for (; k < 10;) {

        k++;
    }
    let p = 1;
    for (let l = 0; l < 10; l++) {
        console.log(p);
        if (p == 5) {
            continue;
        }

        p++;
    }


})();
