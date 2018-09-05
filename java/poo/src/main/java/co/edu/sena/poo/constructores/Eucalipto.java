package co.edu.sena.poo.constructores;

public class Eucalipto extends Arbol {

    private String aroma;

    public Eucalipto(String nombre, float altura, String aroma) {
        super(nombre, altura);
        this.aroma = aroma;
    }

    public String getAroma() {
        return aroma;
    }

    public void setAroma(String aroma) {
        this.aroma = aroma;
    }
}
