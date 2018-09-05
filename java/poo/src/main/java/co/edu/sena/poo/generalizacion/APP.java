package co.edu.sena.poo.generalizacion;

public class APP {
    public static void main(String[] args) {
        Bus bus = new Bus();
        bus.apagar();
        bus.registrar();
        bus.ensender();
        System.out.println(bus.puertas);
        Automovil automovil = new Automovil(4);

    }
}
