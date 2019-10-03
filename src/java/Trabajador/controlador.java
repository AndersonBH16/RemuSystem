/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Trabajador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ModeloDAO.TrabajadorDAO;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import java.util.ArrayList;
import modelo.Trabajador;


/**
 *
 * @author Anderson Blas
 */
@WebServlet(name = "controlador", urlPatterns = {"/controlador"})
public class controlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        response.setContentType("application/json;charset=UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        
        try (PrintWriter out = response.getWriter()) {
        
            TrabajadorDAO trabajadorDAO = new TrabajadorDAO();
            Trabajador trabajador = new Trabajador();
            Gson gson = new Gson();
//            JsonObject jO = new JsonObject();        
//            JsonArray array = new JsonArray();


            String dni = request.getParameter("dni");
            ArrayList<Trabajador> listaTrabajadores = trabajadorDAO.mostrarTrabajadores(dni);
            String respuesta = gson.toJson(listaTrabajadores);
//            out.print("{"+"\"datos\":"+gson.toJson(listaTrabajadores)+"}");
            out.print("{"+"\"datos\":"+respuesta+"}");
        
        }
        //request.getRequestDispatcher("../vistas/consultas.js").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request   
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}












//try (PrintWriter out = response.getWriter()) {
//        
//        TrabajadorDAO trabajadorDAO = new TrabajadorDAO();
//        Trabajador trabajador = new Trabajador();
//        //Gson gson = new Gson();
//        JsonObject jO = new JsonObject();        
//        JsonArray array = new JsonArray();
//        
//                
//        String dni = request.getParameter("dni");
//        ArrayList<Trabajador> listaTrabajadores = trabajadorDAO.mostrarTrabajadores(dni);
//        
//        for(int i=0; i < listaTrabajadores.size();i++){
//            JsonObject item = new JsonObject();
//            item.addProperty("dni", listaTrabajadores.get(i).getDni());
//            item.addProperty("nombres", listaTrabajadores.get(i).getNombres());
//            item.addProperty("fecha_nacimiento", listaTrabajadores.get(i).getFecha_nacimiento());
//            
//            array.add(item);
//        }
//        jO.add("datos", array);
//        out.print(jO.toString());


//        for(int i=0; i < listaTrabajadores.size();i++){
//            out.print("{"+"\"datos\":"+respuesta+"}");
//            out.print(respuesta);
//            echo '{"data":['.$tablaCocina.']}';  
//            out.print("<tr>");
//            out.print("<td>"+(i+1)+"</td>");            
//            out.print("<td>"+listaTrabajadores.get(i).getDni()+"</td>");
//            out.print("<td>"+listaTrabajadores.get(i).getNombres()+"</td>");                                    
//            out.print("<td>"+listaTrabajadores.get(i).getApellido_paterno()+"</td>");                                
//            out.print("<td>"+listaTrabajadores.get(i).getApellido_materno()+"</td>");
//            out.print("<td>"+listaTrabajadores.get(i).getFecha_nacimiento()+"</td>");
//            out.print("<td>"+listaTrabajadores.get(i).getEmail()+"</td>");
//            out.print("<td>"+listaTrabajadores.get(i).getDireccion()+"</td>");
//            out.print("<td>"+listaTrabajadores.get(i).getCodigo_essalud()+"</td>");
//            out.print("<td>"+listaTrabajadores.get(i).getEstado()+"</td>");
//            //out.print("<td align='center'><a href=\"#\" onclick=\"datosBienMueble("+listaBC.get(i).getIdBienCatalogo()+");\"><span class=\"label label-primary\">Seleccionar</span></a></td>");                        
//            out.print("</tr>");
//        }


        //getServletContext().getRequestDispatcher("/vista/consultas.js").forward(request, response);
        
//        }