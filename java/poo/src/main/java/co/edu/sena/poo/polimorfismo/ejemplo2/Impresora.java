package co.edu.sena.poo.polimorfismo.ejemplo2;

public class Impresora {

    public void imprimir(Hoja hoja){
        System.out.println("imprimi en el tipo de hoja: " + hoja.getClass().getSimpleName());

    }

}
