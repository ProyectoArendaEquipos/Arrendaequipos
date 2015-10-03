
package Conexion;

import DAO.Usuario;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Conexion {
    public static boolean ValidateUser(Usuario User) {
        Connection Conexion = null;
        boolean ValidUser = false;
        String Driver = "com.mysql.jdbc.Driver";
        String URL = "jdbc:mysql://localhost/arrendaequipos";
        String UserMySQL = "root";
        String PassMySQL = "";
        
        try {
            Class.forName(Driver);
            Conexion = DriverManager.getConnection(URL, UserMySQL, PassMySQL);
            String Consulta = "SELECT Correo,Clave FROM usuario_web WHERE correo = '" + User.getUserName().trim() + "'";
            Statement Sentencia = Conexion.createStatement();
            ResultSet Resultado = Sentencia.executeQuery(Consulta);
            
            if (Resultado.next()) {
                if(Resultado.getString("Clave").equals(User.getPassword())){
                    
                    
                    ValidUser = true;
                }
            }            
        } catch (ClassNotFoundException Excepcion) {
            System.out.println("No se encuentra el conector a la Base de Datos: " + Excepcion);
        } catch (SQLException Excepcion) {
            System.out.println("Ha ocurrido un error en la Base de Datos: " + Excepcion);
        } finally {
            try {
                if (Conexion != null && !Conexion.isClosed()) {
                    Conexion.close();
                }
            } catch (SQLException Excepcion) {
                System.out.println("Ha ocurrido un error en la Base de Datos: " + Excepcion);
            }
        }
        return ValidUser;
    }
}
