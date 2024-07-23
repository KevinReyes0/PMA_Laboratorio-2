package org.kevinreyes.webapp.service;

import java.util.List;
import org.kevinreyes.webapp.model.Carro;


public interface IVentaCarrosService {
    
    public List<Carro> listarCarros();
    
    public void agregarCarros(Carro carro);
    
}
