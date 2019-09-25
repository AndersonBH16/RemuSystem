/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import librerias.Conexion;
import modelo.Trabajador;
import java.util.ArrayList;

/**
 *
 * @author Anderson Blas
 */
public class TrabajadorDAO {
    Connection con ;
    Conexion conex = new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    
    Trabajador trabajador = new Trabajador();
    
    public ArrayList<Trabajador> mostrarTrabajadores(String dni){
        
        ArrayList<Trabajador> trabajador = new ArrayList<>();
                
        try {
            String consulta = "call mostrarTrabajador(?)";
            con = conex.obtenerConexion();
            ps = con.prepareCall(consulta);
            ps.setString(1, dni);
            rs = ps.executeQuery();
            while(rs.next()){
                trabajador.add(new Trabajador(
                        rs.getInt("idPersona"), 
                        rs.getString("dni"), 
                        rs.getString("nombres"), 
                        rs.getString("apellido_paterno"), 
                        rs.getString("apellido_materno"),
                        rs.getString("fecha_nacimiento"),
                        rs.getString("email"),
                        rs.getString("direccion"),
                        rs.getString("codigo_essalud"),
                        rs.getString("estado")
                ));
            }
        } catch (Exception e) {
            System.out.println("1. TrabajadorDAO: "+e);
        }finally{
            try {
                if(conex.obtenerConexion() != null){
                    conex.obtenerConexion().close();
                }
                if(ps != null){
                    ps.close();
                }
                if(rs != null){
                    rs.close();
                }
            } catch (Exception e) {
                System.out.println("2. TrabajadorDAO: "+e);
            }
        }        
        return trabajador;
    }
    
    public static void main(String[] args) throws SQLException{
//        TrabajadorDAO trab_dao = new TrabajadorDAO();
//        String dni = "70672885";
//        for(Trabajador t : trab_dao.mostrarTrabajadores("70672885")){
//            System.out.println("Datos: "+t.getNombres());
//        }
    }
}