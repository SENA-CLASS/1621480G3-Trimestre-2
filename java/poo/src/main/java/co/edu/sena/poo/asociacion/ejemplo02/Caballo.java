package co.edu.sena.poo.asociacion.ejemplo02;

public class Caballo {
    private Corazon corazon;
    private Pulmon pulmonIzquierdo;
    private Pulmon pulmonDerecho;
    private SillaMontar sillaMontar;
    private Herradura[] herraduras= new Herradura[4];

    public Caballo(Corazon corazon, Pulmon pulmonIzquierdo, Pulmon pulmonDerecho) {
        this.corazon = corazon;
        this.pulmonIzquierdo = pulmonIzquierdo;
        this.pulmonDerecho = pulmonDerecho;
    }

    public Corazon getCorazon() {
        return corazon;
    }

    public Pulmon getPulmonIzquierdo() {
        return pulmonIzquierdo;
    }

    public Pulmon getPulmonDerecho() {
        return pulmonDerecho;
    }

    public SillaMontar getSillaMontar() {
        return sillaMontar;
    }

    public void setSillaMontar(SillaMontar sillaMontar) {
        this.sillaMontar = sillaMontar;
    }

    public Herradura[] getHerraduras() {
        return herraduras;
    }

    public void setHerraduras(Herradura[] herraduras) {
        this.herraduras = herraduras;
    }
}
