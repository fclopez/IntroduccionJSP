/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import java.time.LocalDate;
import java.time.Period;
import java.time.format.DateTimeFormatter;

/**
 *
 * @author fclopez4
 */
public class Indice {

    private String nombre, fecha;
    private int edad;
    
    /*Constructor*/
    public Indice(){
        nombre = null;
        fecha = null;
        edad = 0;
    }

    /*Getters and Setters*/
    public String getNombre() {
        return nombre;
    }

    public String getFecha() {
        return fecha;
    }
    
    public int getEdad(){
        return edad;
    }

    public void setNombre(String n) {
        this.nombre = n;
    }
    
    public void setFecha(String f) {
        this.fecha = f;
        calcularEdad();
    }
    
    public void setEdad(int e){
        this.edad = e;   
    }
    
    public int getDimension(){
        return nombre.length();
    }
    
    /*Funcionalidad*/
    public void calcularEdad(){
        DateTimeFormatter formato = DateTimeFormatter.ofPattern("dd/MM/yyy");
        LocalDate fechaini = LocalDate.parse(getFecha(),formato);
        LocalDate fechafin = LocalDate.now();
        Period diferencia = Period.between(fechaini, fechafin);
        setEdad(diferencia.getYears()) ;
    }    
    
}
