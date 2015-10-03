package DAO;
import java.sql.*;
 
public class DAO {
    public Connection conexion;
    public final static String userDb = "root";
    public final static String passDb = "";
    
    
    //Conectar a la Base de datos
    public void conectar() throws SQLException,ClassNotFoundException{
         Class.forName("com.mysql.jdbc.Driver");
         conexion=DriverManager.getConnection("jdbc:mysql://localhost/arrendaequipos",userDb, passDb);
    }
    //Desconectar a la Base de datos
    public void desconectar() throws SQLException, ClassNotFoundException{
        conexion.close();
    }
    
    //Metodo para consultar si un email y contraseñan pertenecen a una cuenta registrada
    public boolean isAcountExists(String email, String password) throws SQLException{
        String sql = "SELECT correo, clave FROM usuario_web WHERE correo='"+email+"' AND clave='"+password+"'";
        PreparedStatement ps = conexion.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        
        return rs.next();
    }
    
    //Metodo para consultar si el email recibido ya esta registrado
    public boolean isEmailRegistered(String email) throws SQLException{
        String sql = "SELECT correo FROM usuario_web WHERE correo='"+email+"'";
        PreparedStatement ps = conexion.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
 
        return rs.next();
    }
    
    //Metodo para registrar una cuenta
    public void registerUser(String Nombre, String Documento, String Telefono, String Celular, String Direccion, String Correo, String Clave) throws SQLException{
        String sql = "INSERT INTO usuario_web (nombre,documento,telefono,celular,direccion,correo,clave) VALUES ('"+Nombre+"','"+Documento+"','"+Telefono+"','"+Celular+"','"+Direccion+"','"+Correo+"','"+Clave+"')";
        PreparedStatement ps = conexion.prepareStatement(sql);
        ps.executeUpdate();
    }
    
    
    
}