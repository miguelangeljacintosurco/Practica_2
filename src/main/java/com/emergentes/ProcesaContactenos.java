package com.emergentes;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ProcesaContactenos", urlPatterns = {"/ProcesaContactenos"})
public class ProcesaContactenos extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String correo = request.getParameter("correo");
        String mensaje = request.getParameter("mensaje");
        String copia = request.getParameter("copia");
        //crear un objeto para encapsular la infromacion      
        Contactenos conta=new Contactenos();
        //llenar datos en el objeto en       
        conta.setNombre(nombre);
        conta.setCorreo(correo);
        conta.setMensaje(mensaje);
        conta.setCopia(copia);
        //colocar  el objeto "en" como atributo de request       
        request.setAttribute("conta", conta);       
        //enviar el onjeto request a salida.jsp       
        request.getRequestDispatcher("SalidaContactenos.jsp").forward(request, response);
    }

}
