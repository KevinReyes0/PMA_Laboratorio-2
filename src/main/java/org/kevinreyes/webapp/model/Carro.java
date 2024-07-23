
package org.kevinreyes.webapp.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="Carros")
public class Carro {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    
    private int carroId;
    private String marca;
    private String modelo;
    private String color;
    private String placa;

    public Carro() {
    }

    public Carro(int carroId, String marca, String modelo, String color, String placa) {
        this.carroId = carroId;
        this.marca = marca;
        this.modelo = modelo;
        this.color = color;
        this.placa = placa;
    }

    public Carro(String marca, String modelo, String color, String placa) {
        this.marca = marca;
        this.modelo = modelo;
        this.color = color;
        this.placa = placa;
    }

    public int getCarroId() {
        return carroId;
    }

    public void setCarroId(int carroId) {
        this.carroId = carroId;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getPlaca() {
        return placa;
    }

    public void setPlaca(String placa) {
        this.placa = placa;
    }

    @Override
    public String toString() {
        return "Carro{" + "carroId=" + carroId + ", marca=" + marca + ", modelo=" + modelo + ", color=" + color + ", placa=" + placa + '}';
    }  
}
