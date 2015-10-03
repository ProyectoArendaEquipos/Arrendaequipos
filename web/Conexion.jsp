<%-- 
    
    Author     : Ronald Jaramillo Mejía
--%>

<%@page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*"%>
<%
    Connection Conex = null;

    // Parámetros para la conexión.
    String Driver = "com.mysql.jdbc.Driver";
    String URL = "jdbc:mysql://localhost/arrendaequipos";
    String Usuario = "root";
    String Contrasena = "";

    try {
        //Se selecciona con qué motor de Base de Datos se va a trabajar.
        Class.forName(Driver);
        Conex = DriverManager.getConnection(URL, Usuario, Contrasena);
        session.setAttribute("Conexion", Conex);
        // Imprimir si se realizó con éxito la Conexión.
            out.println("Conexión realizada con éxito a: "+Conex.getCatalog()+"<br>");
    } catch (SQLException e){
        out.println("Error en la Conexión de la BD: " + e);
    }
%>