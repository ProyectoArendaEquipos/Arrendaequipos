

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang='es'>

    <%
        HttpSession Session = request.getSession();
        String Error = (String) Session.getAttribute("ErrorLogin");

        // Utilizarlo para obtener parametros de la URL TEST.
        /* String Redirect = response.encodeRedirectURL(request.getContextPath()
         + "/Login.jsp");
         String Parameter = request.getParameter("Update");
         Session.setAttribute("TimeCount", "Cero");
         String TimeUpdate = (String)Session.getAttribute("TimeCount");
         if (TimeUpdate == "Cero" && Parameter != null) {
         response.setHeader("refresh", "1; URL = '" + Redirect + "'");
         Session.setAttribute("TimeCount", "Uno");
         } */
    %>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
        <script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
        <script type="text/javascript" src="JS/Login.js"></script>
        <link rel="stylesheet" type="text/css" href="CSS/style.css">





        <title> Iniciar Sesión - Arrendaequipos S.A </title>

        <script>
            function UpdatePage() {
            <%                  if (Error != null && !Error.equals("")) {
                      out.write("var Mensaje = $('#MensajeError'); Mensaje.text('" + Error + "');");
                      Session.invalidate();
                      out.write("MensajeError();");
                      out.write("document.UserForm.TxtUserName.focus();");
                  } else {
                      Error = "";
                  }
            %>
            }

            $(document).ready(function () {
                $('#MensajeError').hide();
                $('#MensajeError').click(function () {
                    $('#MensajeError').slideUp(250);
                });
            });
        </script>
    </head>

    
    
    <body onload="UpdatePage()">
   
        <div class="container">
            <div id="login" >



                <h2><span class="fontawesome-lock"></span>Iniciar Sesión</h2>

                
                <form name="UserForm" action="./Inicio" method="POST" autocomplete="off">
                <fieldset>
                    
                       

                            <p><label for="email">Correo electrónico:</label></p>


                            <p> <input id="email" name="TxtUserName" type="email" onkeypress="Enter(event)" placeholder="Correo electrónico"/> </p>




                            <p><label for="password">Contraseña:</label></p>

                            <p>
                                <input class="FormInputs" id="Password" name="TxtPassword" type="password" onkeypress="Enter(event)" placeholder="Contraseña"/>
                            </p>



                            <p>
                                <input id="BtnIniciarSesion" value="Iniciar Sesión" type="Button" onclick="Enviar()"/>
                            </p>
                            
                            
                               
                            <p>
                                <input id="BtnRegistrarse" value="Registrarse" onclick="location.href = 'Registrarse.jsp'"  type="Button" />
                            </p>
                            
                          
                </fieldset>

            </form>

            </div>

<header>
        
   <div id="MensajeError" title="Click Para Esconder Éste Mensaje"></div>
        
    </header>
        </div>
   
    
</body>
</html>