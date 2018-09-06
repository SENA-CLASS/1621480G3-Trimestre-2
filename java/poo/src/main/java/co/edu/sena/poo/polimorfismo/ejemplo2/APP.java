package co.edu.sena.poo.polimorfismo.ejemplo2;

public class APP {
    public static void main(String[] args) {
        Hoja h1 = new Carta();
        Hoja h2 = new Oficio();
        Hoja h3 = new Pliego();


        Impresora i1 = new Impresora();
        i1.imprimir(h1);
        i1.imprimir(h2);
        i1.imprimir(h3);

        Carta c = (Carta) h1;



    }
}
