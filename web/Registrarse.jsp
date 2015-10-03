<%-- 
    Document   : Registrarse
    Created on : 27/09/2015, 10:22:29 PM
    Author     : Ronald
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <link rel="stylesheet" type="text/css" href="CSS/style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrarse</title>
    </head>
    <body>
       


        <p style="color: #ff0000">${sessionScope['error']}</p>
        <form name="contact_form" class="contact_form" action="./Registrarse" method="post">
            <ul>
                <li>
                    <h2>Registrarse</h2>
                    <span class="required_notification">(*) Campos obligatorios</span>
                </li>
                <li>
                    <label for="name">Nombre:</label>
                    <input type="text" name="name" required />

                </li>

                <li>
                    <label for="name">Documento:</label>
                    <input type="text" name="name" required />

                </li>
                
                <li>
                    <label for="name">Teléfono</label>
                    <input type="text" name="name" required />

                </li>
                
                <li>
                    <label for="name">Celular</label>
                    <input type="text" name="name"  />

                </li>
                
                <li>
                    <label for="name">Dirección:</label>
                    <input type="text" name="name" required />

                </li>
                
                <li>
                    <label for="name">Correo electrónico:</label>
                    <input type="text" name="name" required />
                    <span class="form_hint">Ingrese un correo con el formato: "nombre@algo.com"</span>

                </li>
                
                <li>
                    <label for="name">Contraseña:</label>
                    <input type="text" name="name" required />
                    <span class="form_hint">La contraseña no debe contener caracteres especiales como: /\:*?"<>| </span>

                </li>
                
                <li>
                    <label for="name">Confirme su contraseña:</label>
                    <input type="text" name="name" required />

                </li>
               

                <li>
                    <button class="submit" type="submit">Registrarse</button>
                </li>


            </ul>
        </form>
    </body>
</html>