
import jakarta.persistence.EntityManager;
import java.util.List;
import org.kevinreyes.webapp.model.Carro;
import org.kevinreyes.webapp.util.JPAUtil;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author reyes
 */
public class main {
    
    private static EntityManager em = JPAUtil.getEntityManager();

    public static void main(String[] args) {
        
        List<Carro> carros = em.createQuery("SELECT c FROM Carro c", Carro.class).getResultList();
        carros.forEach(carro -> System.out.println(carro));

        
        
    }
}
