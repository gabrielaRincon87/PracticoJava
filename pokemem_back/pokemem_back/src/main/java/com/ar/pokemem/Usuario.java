package com.ar.pokemem;

public class Usuario {
private int id_usuario ;
private String nombre;
private int edad;
private int id_pais;
private String email;
private String password;
private String avatar;

public Usuario(String nombre, int edad, int id_pais, String email, String password, String avatar) {
    this.nombre = nombre;
    this.edad = edad;
    this.id_pais = id_pais;
    this.email = email;
    this.password = password;
    this.avatar = avatar;
}
public Usuario(int id_usuario, String nombre, int edad, int id_pais, String email, String password, String avatar) {
    this.id_usuario = id_usuario;
    this.nombre = nombre;
    this.edad = edad;
    this.id_pais = id_pais;
    this.email = email;
    this.password = password;
    this.avatar = avatar;
}
public Usuario() {
}
public int getId_usuario() {
    return id_usuario;
}
public void setId_usuario(int id_usuario) {
    this.id_usuario = id_usuario;
}
public String getNombre() {
    return nombre;
}
public void setNombre(String nombre) {
    this.nombre = nombre;
}
public int getEdad() {
    return edad;
}
public void setEdad(int edad) {
    this.edad = edad;
}
public int getId_pais() {
    return id_pais;
}
public void setId_pais(int id_pais) {
    this.id_pais = id_pais;
}
public String getEmail() {
    return email;
}
public void setEmail(String email) {
    this.email = email;
}
public String getPassword() {
    return password;
}
public void setPassword(String password) {
    this.password = password;
}
public String getAvatar() {
    return avatar;
}
public void setAvatar(String avatar) {
    this.avatar = avatar;
}}