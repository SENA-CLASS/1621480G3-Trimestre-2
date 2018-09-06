package co.edu.sena.poo.asociacion.ejemplo02;

public class APP {
    public static void main(String[] args) {
        Caballo rocinante = new Caballo(new Corazon(),new Pulmon(), new Pulmon());

        SillaMontar silla1 = new SillaMontar();
        SillaMontar silla2 = new SillaMontar();

        rocinante.setSillaMontar(silla1);


        rocinante.setSillaMontar(silla2);

        rocinante.getHerraduras()[0]= new Herradura();

        System.out.println(rocinante.getHerraduras()[0]);
        System.out.println(rocinante.getHerraduras()[1]);
        System.out.println(rocinante.getHerraduras()[2]);
        System.out.println(rocinante.getHerraduras()[3]);
    }
}
