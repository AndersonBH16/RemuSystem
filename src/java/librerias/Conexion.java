/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package librerias;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Anderson Blas
 */

public class Conexion {
    
    private String servidor = "jdbc:mysql://192.168.1.100/test01";
    private String user = "anderbh";
    private String password = "r3munerac1on3s.";
    private String driver = "com.mysql.jdbc.Driver";
    private static Connection conexion = null;
    
    public Conexion(){
        try {
            Class.forName(driver);
            conexion = DriverManager.getConnection(servidor, user, password);
            System.out.println("Conexión a mysql exitosa");
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Fallo en la conexión "+e);
        }
    }
    
    public Connection obtenerConexion(){
        return conexion;
    }
        
    public static void main(String[] args) {
        Conexion con = new Conexion();
        System.out.println("Conexión izi");
    }
}