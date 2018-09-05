package co.edu.sena.poo.encapsular;

public class Avion {
    private String color;
    private String modelo;
    private String id;
    private String marca;

    public Avion() {
    }

    public Avion(String color, String modelo, String id, String marca) {
        this.color = color;
        this.modelo = modelo;
        this.id = id;
        this.marca = marca;
    }

    public Avion(String color, String modelo, String id) {
        this.color = color;
        this.modelo = modelo;
        this.id = id;
    }

    public Avion(String color, String id) {
        this.color = color;
        this.modelo = modelo;
        this.id = id;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }
}
