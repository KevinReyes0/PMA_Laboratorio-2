
package org.kevinreyes.webapp.util;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class JPAUtil {
    private static final EntityManagerFactory emf = builEntityManagerFactory();
    
    public static EntityManagerFactory builEntityManagerFactory(){
        try{
            return Persistence.createEntityManagerFactory("VentaCarros");
        }catch(Throwable e){
            e.printStackTrace();
            throw new ExceptionInInitializerError(e);
        }
    }     
    
    public static EntityManager getEntityManager(){
        return emf.createEntityManager();
    }
    
    public static void close(){
        emf.close();
    }
}
