<%@page import="com.emergentes.Inscripcion"%>
<%
    Inscripcion ins = (Inscripcion) request.getAttribute("inscrip");
    String seminarios[] = ins.getSeminarios();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Inscripcion de Seminarios</h1>
        <fieldset>
            <legend><h3>DATOS RECIBIDOS: </h3></legend>
            <p><b>Fecha: </b><%= ins.getFecha()%></p>
            <p><b>Nombre: </b><%= ins.getNombre()%> </p>
            <p><b>Apellidos: </b><%= ins.getApellidos()%></p>
            <p><b>Turno: </b><%= ins.getTurno()%></p>
            <p><b>Los seminarios a los cuales usted se ha inscrito son:</b></p>
            <ul>
                <%
                    if (seminarios != null) {
                        for (String item : seminarios) {
                %>
                <li><%= item%></li>
                    <%
                            }
                        }
                    %>
            </ul>
            <br>
        </fieldset>
        <a href="Inscripcion.jsp">VOLVER A FORMULARIO</a>
    </body>
</html>
