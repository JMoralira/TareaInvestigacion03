package com.sv.udb.modelo;



/**
 *
 * @author Jose Lira
 */
public class Partidos {
    private int codiPart;
   private int codiEqui1;
   private int codiEqui2;
   private int goleEqui1;
   private int goleEqui2;
   private String fechHora;
   private String Lugar;
   
   public Partidos(){
   }

    public Partidos(int codiPart, int codiEqui1, int codiEqui2, int goleEqui1, int goleEqui2, String fechHora, String Lugar) {
        this.codiPart = codiPart;
        this.codiEqui1 = codiEqui1;
        this.codiEqui2 = codiEqui2;
        this.goleEqui1 = goleEqui1;
        this.goleEqui2 = goleEqui2;
        this.fechHora = fechHora;
        this.Lugar = Lugar;
    }

    public int getCodiPart() {
        return codiPart;
    }

    public void setCodiPart(int codiPart) {
        this.codiPart = codiPart;
    }

    public int getCodiEqui1() {
        return codiEqui1;
    }

    public void setCodiEqui1(int codiEqui1) {
        this.codiEqui1 = codiEqui1;
    }

    public int getCodiEqui2() {
        return codiEqui2;
    }

    public void setCodiEqui2(int codiEqui2) {
        this.codiEqui2 = codiEqui2;
    }

    public int getGoleEqui1() {
        return goleEqui1;
    }

    public void setGoleEqui1(int goleEqui1) {
        this.goleEqui1 = goleEqui1;
    }

    public int getGoleEqui2() {
        return goleEqui2;
    }

    public void setGoleEqui2(int goleEqui2) {
        this.goleEqui2 = goleEqui2;
    }

    public String getFechHora() {
        return fechHora;
    }

    public void setFechHora(String fechHora) {
        this.fechHora = fechHora;
    }

    public String getLugar() {
        return Lugar;
    }

    public void setLugar(String Lugar) {
        this.Lugar = Lugar;
    }

    

    @Override
    public String toString() {
        return fechHora;
    }
    
}
