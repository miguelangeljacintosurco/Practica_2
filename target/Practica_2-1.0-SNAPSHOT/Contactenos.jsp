<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Contactenos</title>
    </head>
    <body>
        <center> <h1>Contactenos</h1></center>
        <form action="ProcesaContactenos" method="POST">
            <table border="0">
               <label for="nom">Nombre</label>
               <input type="text" name="nombre" id="nom">
               <br><br>
               <label for="correo">Correo Electronico</label>
               <input type="email" name="correo" id="correo">
               <br><br>
               <label for="men">Mensaje</label>
               <textarea type="text" name="mensaje" id="men"></textarea>
               <br><br>
               <input type="checkbox" name="copia" values="">
               <label>Enviar una copia a mi correo</label> 
               <br><br>
               <input type="submit" value="Enviar" />
               <br><br>
               <a href="index.jsp">VOLVER A MENU PRINCIPAL</a> 
            </table>
            
        </form>
    </body>
</html>
