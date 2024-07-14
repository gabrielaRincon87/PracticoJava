package com.ar.pokemem;

public class Metrica {
    private int id_usuario;
    private int mayor_puntaje;
    private int puntaje_acumulado;
    private String fecha; 
    
    public Metrica() {
    }
    public Metrica(int id_usuario, int mayor_puntaje, int puntaje_acumulado, String fecha) {
        this.id_usuario = id_usuario;
        this.mayor_puntaje = mayor_puntaje;
        this.puntaje_acumulado = puntaje_acumulado;
        this.fecha = fecha;
    }
    public int getId_usuario() {
        return id_usuario;
    }
    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }
    public int getMayor_puntaje() {
        return mayor_puntaje;
    }
    public void setMayor_puntaje(int mayor_puntaje) {
        this.mayor_puntaje = mayor_puntaje;
    }
    public int getPuntaje_acumulado() {
        return puntaje_acumulado;
    }
    public void setPuntaje_acumulado(int puntaje_acumulado) {
        this.puntaje_acumulado = puntaje_acumulado;
    }
    public String getFecha() {
        return fecha;
    }
    public void setFecha(String fecha) {
        this.fecha = fecha;
    }
    @Override
    public String toString() {
        return "Metrica [id_usuario=" + id_usuario + ", mayor_puntaje=" + mayor_puntaje + ", puntaje_acumulado="
                + puntaje_acumulado + ", fecha=" + fecha + "]";
    }
    
}
