package com.ar.pokemem;

public class Pais {
    private Integer id_pais;
    private String descripcion;
    public Pais(Integer id_pais, String descripcion) {
        this.id_pais = id_pais;
        this.descripcion = descripcion;
    }
    public Integer getId_pais() {
        return id_pais;
    }
    public void setId_pais(Integer id_pais) {
        this.id_pais = id_pais;
    }
    public String getDescripcion() {
        return descripcion;
    }
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
}
