package co.edu.sena.poo.encapsular;

public class APP {
    public static void main(String[] args) {
        Avion a = new Avion();
        a.setColor("rojo");
        a.setId("1");
        a.setMarca("honda");
        a.setModelo("2010");



        System.out.println(a.getId());
        System.out.println(a.getColor());
        System.out.println(a.getMarca());
        System.out.println(a.getModelo());

        Avion a2 = new Avion("rojo", "2010", "2", "mazda");
    }
}
