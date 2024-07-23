package org.kevinreyes.webapp.service;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import java.util.List;
import org.kevinreyes.webapp.model.Carro;
import org.kevinreyes.webapp.util.JPAUtil;


public class VentaCarrosService implements IVentaCarrosService{
    
     private EntityManager em;
     
     public VentaCarrosService(){
         this.em = JPAUtil.getEntityManager();
     }
     
      @Override
    public List<Carro> listarCarros() {
        return em.createQuery("SELECT c FROM Carro c", Carro.class).getResultList();
    }

    @Override
    public void agregarCarros(Carro carro) {
        EntityTransaction transaction = em.getTransaction();
        try {
            transaction.begin();
            em.persist(carro);
            transaction.commit();
        } catch (Exception e) {
            if (transaction.isActive()) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }
}
