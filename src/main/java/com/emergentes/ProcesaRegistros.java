package com.emergentes;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "ProcesaRegistros", urlPatterns = {"/ProcesaRegistros"})
public class ProcesaRegistros extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String apellidos = request.getParameter("apellidos");
        String correo = request.getParameter("correo");
        String contraseña = request.getParameter("contraseña");
        //crear un objeto para encapsular la infromacion
        Registros regis=new Registros();      
        //llenar datos en el objeto en       
        regis.setNombre(nombre);
        regis.setApellidos(apellidos);
        regis.setCorreo(correo);
        regis.setContraseña(contraseña);
        //colocar  el objeto "en" como atributo de request       
        request.setAttribute("regis", regis);       
        //enviar el onjeto request a salida.jsp       
        request.getRequestDispatcher("SalidaRegistros.jsp").forward(request, response);
    }
}
