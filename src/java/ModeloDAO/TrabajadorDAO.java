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
    
    public Arraylist<Trabajador> mostrarTrabajadores() throws SQLException{
        String consulta = "SELECT * FROM PERSONA WHERE = ?";
        try {
            con = conex.obtenerConexion();
            ps = con.prepareStatement(consulta);
            ps.setString(1, consulta);
            ps.setString(2, consulta);
            rs = ps.executeQuery();
        } catch (Exception e) {
        }
    }
}
