package com.ar.pokemem;


public class Puntaje {

    private Integer id_puntaje;
    private Integer id_usuario;
    private String fecha;
    private Integer puntaje;
    public Puntaje(Integer id_usuario, String fecha, Integer puntaje) {
        this.id_usuario = id_usuario;
        this.fecha = fecha;
        this.puntaje = puntaje;
    }
    public Puntaje() {
    }
    public Puntaje(Integer id_puntaje, Integer id_usuario, String fecha, Integer puntaje) {
        this.id_puntaje = id_puntaje;
        this.id_usuario = id_usuario;
        this.fecha = fecha;
        this.puntaje = puntaje;
    }
    public Integer getId_puntaje() {
        return id_puntaje;
    }
    public void setId_puntaje(Integer id_puntaje) {
        this.id_puntaje = id_puntaje;
    }
    public Integer getId_usuario() {
        return id_usuario;
    }
    public void setId_usuario(Integer id_usuario) {
        this.id_usuario = id_usuario;
    }
    public String getFecha() {
        return fecha;
    }
    public void setFecha(String fecha) {
        this.fecha = fecha;
    }
    public Integer getPuntaje() {
        return puntaje;
    }
    public void setPuntaje(Integer puntaje) {
        this.puntaje = puntaje;
    }

}
