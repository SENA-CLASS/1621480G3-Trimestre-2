package co.edu.sena.poo.generalizacion;

public final class AutoElectrico extends Automovil {

    public AutoElectrico(int puertas) {
        super(puertas);
    }

    @Override
    public void ensender() {
        System.out.println("prendo con pilas");
    }
}
