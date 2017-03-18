package com.sv.udb.controlador;

import com.sv.udb.modelo.Partidos;
import com.sv.udb.recursos.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Jose Lira
 */
public class PartidosCtrl {
    //GUARDAR
    public boolean guar(Partidos obje)
    {
        boolean resp = false;
        Connection cn = new Conexion().getConn();
        try {
            PreparedStatement cmd = cn.prepareStatement("insert into partidos values(NULL,?,?,?,?,?,?)");
            cmd.setInt(1, obje.getCodiEqui1());
            cmd.setInt(2, obje.getCodiEqui2());
            cmd.setInt(3, obje.getGoleEqui1());
            cmd.setInt(4, obje.getGoleEqui2());
            cmd.setString(5, obje.getFechHora());
            cmd.setString(6, obje.getLugar());
            cmd.executeUpdate();
            resp=true;
            
        } catch (Exception ex) {
            System.err.println("Error al guardadr Jugadores" + ex.getMessage());
        }
        finally
        {
            try {
                 if(cn != null)
                {
                    if(!cn.isClosed())
                    {
                        cn.close();
                    }
                }
            } catch (Exception err) {
                err.printStackTrace();
            }
        }
        return resp;
    }
    
    
    //MOSTRAR
    public List<Partidos> constTodo()
    {
        List<Partidos> resp = new ArrayList();
        Connection cn = new Conexion().getConn();
        try {
            PreparedStatement cmd = cn.prepareStatement("select * from partidos");
            ResultSet rs = cmd.executeQuery();
            while(rs.next())
            {
                resp.add(new Partidos(rs.getInt(1),rs.getInt(2),rs.getInt(3),rs.getInt(4), rs.getInt(5), rs.getString(6), rs.getString(7)));               
            }
        } catch (Exception err) {
            err.printStackTrace();
        }
        finally
        {
            try {
                if(cn != null)
                {
                    if(!cn.isClosed())
                    {
                        cn.close();
                    }
                }
            } catch (Exception err) {
                err.printStackTrace();
            }
        }
        return resp;
    }
    
      //MODIFICAR
    public boolean modi(Partidos obje)
    {
        boolean resp = false;
        Connection cn = new Conexion().getConn();
        try
        {
            PreparedStatement cmd = cn.prepareStatement("update partidos set equ1_part = "+obje.getCodiEqui1()+" , equ2_part = "+obje.getCodiEqui2()+" , marca_equ1 = "+obje.getGoleEqui1()+" , marca_equ2 = "+obje.getGoleEqui2()+" , fech_hora = '"+obje.getFechHora()+"' , luga = '"+obje.getLugar()+"' where codi_part = "+obje.getCodiPart()+"");
            cmd.executeUpdate();
            resp=true;
        }
        catch(Exception ex)
        {
            System.err.println("Error al modificar: " + ex.getMessage());
        }
        finally
        {
            try {
                if(cn != null)
                {
                    if(!cn.isClosed())
                    {
                        cn.close();
                    }
                }
            } catch (SQLException err) {
                err.printStackTrace();
            }
        }
        return resp;
    }
    
    //ELIMINAR
    public boolean elim(Partidos obje)
    {
        boolean resp = false;
        Connection cn = new Conexion().getConn();
        try
        {
            PreparedStatement cmd = cn.prepareStatement("delete from partidos where codi_part = "+obje.getCodiPart()+"");
            cmd.executeUpdate();
            resp=true;
        }
        catch(Exception ex)
        {
            System.err.println("Error al Eliminar: " + ex.getMessage());
        }
        finally
        {
            try {
                if(cn != null)
                {
                    if(!cn.isClosed())
                    {
                        cn.close();
                    }
                }
            } catch (SQLException err) {
                err.printStackTrace();
            }
        }
        return resp;
    }
}
