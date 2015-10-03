
package Servlets;

import Conexion.Conexion;
import DAO.Usuario;
import java.io.IOException;
import static java.lang.System.out;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

public class Autenticacion extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        RequestDispatcher Solicitud;

        try {
            String UserName = request.getParameter("TxtUserName");
            String Password = request.getParameter("TxtPassword");
            String Error = "";

            if (UserName != null && !UserName.equals("") && Password != null && !Password.equals("")) {
                Usuario UserObject = new Usuario();
                UserObject.setUserName(UserName);
                UserObject.setPassword(Password);

                boolean ValidUser = Conexion.ValidateUser(UserObject);

                if (ValidUser) {
                    Solicitud = getServletContext().getRequestDispatcher("/MenuPrincipal.jsp");
                    
                    HttpSession Session = request.getSession(true);
                    Session.setAttribute("UserLogin", UserObject);
                    Solicitud.forward(request, response);
                } else {
                    
                    Error = "Usuario y/o contraseña incorrectos";                        
                    HttpSession Session = request.getSession(true);
                    Session.setAttribute("ErrorLogin", Error);
                        // Solicitud = getServletContext().getRequestDispatcher("/Login.jsp");
                        // Solicitud.forward(request, response);
                  
                    
                   String Redirect = response.encodeRedirectURL(request.getContextPath()
                            + "/Login.jsp");
                    response.sendRedirect(Redirect); 
                }
            }
        } finally {
            System.out.println("¡Objetivo Realizado!");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}