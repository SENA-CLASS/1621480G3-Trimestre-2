package co.edu.sena.poo.generalizacion;

public class Bus extends Automovil {

    public Bus(int puertas) {
        super(puertas);
    }


    public void registrar(){
        System.out.println("registre una persona");
    }

    public void ensender(){
        System.out.println("me estan empuja");
    }
}
