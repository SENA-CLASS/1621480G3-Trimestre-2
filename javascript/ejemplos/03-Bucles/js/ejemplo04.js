(function () {
    let camion = {
        placa: "ASE123",
        marca: "mazda",
        precio: "50000000"
    }
    for (let prop in camion) {
        document.write(prop + ": " + camion[prop] + "<br/>");
    }
})();
