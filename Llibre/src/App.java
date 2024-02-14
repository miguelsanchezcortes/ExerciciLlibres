

import model.Capítol;
import model.Llibre;
import model.Part;
import model.Seccio;

public class App {
    public static void main(String[] args) {
        Llibre llibres[] = new Llibre[2];
        Llibre l1 = new Llibre("Llibre1", "Autor1", "ISBN1", "Resum1", new Part[0]);
        Llibre l2 = new Llibre("Llibre2", "Autor2", "ISBN2", "Resum2", new Part[0]);
        llibres[0] = l1;
        llibres[1] = l2;


        Part[] partsl1= new Part[1];
        Part[] partsl2= new Part[1];
        Part p1 = new Part("Part1", new Capítol[0]);
        Part p2 = new Part("Part2", new Capítol[0]);
        partsl1[0] = p1;
        partsl2[0] = p2;
        Capítol[] capitols1 = new Capítol[2];
        Capítol[] capitols2 = new Capítol[2];
        Capítol c1 = new Capítol("Capítol1", new Seccio[0]);
        Capítol c2 = new Capítol("Capítol2", new Seccio[0]);
        capitols1[0] = c1;
        capitols1[1] = c2;
        capitols2[0] = c1;
        capitols2[1] = c2;

        Seccio[] seccions1 = new Seccio[2];
        Seccio[] seccions2 = new Seccio[2];
        Seccio s1 = new Seccio("Seccio1");
        Seccio s2 = new Seccio("Seccio2");
        seccions1[0] = s1;
        seccions1[1] = s2;
        seccions2[0] = s1;
        seccions2[1] = s2;

        
        // Assignar a cada llibre l'array de parts
        l1.setParts(partsl1);        
        l2.setParts(partsl2);

        // Assignar a cada part l'array de capítols
        p1.setCapítols(capitols1);
        p2.setCapítols(capitols2);
        // Assignar a cada capítol l'array de seccions
        c1.setSeccions(seccions1);
        c2.setSeccions(seccions2);
        // Mostrar llibres
        for (Llibre llibre : llibres) {
            System.out.println(llibre);
        }

        //canviar part del llibre 1
        l1.setParts(partsl2);

        for (Llibre llibre : llibres) {
            System.out.println("-------------------");
            System.out.println(llibre);
        }


    }
}
