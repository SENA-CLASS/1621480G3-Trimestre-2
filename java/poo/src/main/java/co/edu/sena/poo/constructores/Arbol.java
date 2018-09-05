package co.edu.sena.poo.constructores;

public class Arbol {

    private String nombre;
    private float altura;

    public Arbol(String nombre, float altura) {
        this.nombre = nombre;
        this.altura = altura;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public float getAltura() {
        return altura;
    }

    public void setAltura(float altura) {
        this.altura = altura;
    }
}
