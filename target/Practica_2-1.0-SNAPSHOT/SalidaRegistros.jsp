<%@page import="com.emergentes.Registros"%>
<%
    Registros regis = (Registros) request.getAttribute("regis");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuario registrado</title>
    </head>
    <body>
        <h1>Registro de Usuariio</h1>
        <fieldset>
            <legend><h3>DATOS RECIBIDOS:</h3></legend>        
            <p><b>Nombre: </b><%= regis.getNombre()%> </p>
            <p><b>Apellidos: </b><%= regis.getApellidos()%></p>
            <p><b>Correo: </b><%= regis.getCorreo()%></p>
            <p><b>Contraseña: </b><%= regis.getContraseña()%></p>    
            <br>
        </fieldset>
        <a href="Registros.jsp">VOLVER A FORMULARIO</a>
    </body>
</html>
