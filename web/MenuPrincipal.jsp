<%-- 
    Document   : MenuPrincipal
    Created on : 27/09/2015, 12:56:41 AM
    Author     : Ronald
--%>

<%@page import="DAO.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    HttpSession Session = request.getSession();
    Usuario UserObject = (Usuario)Session.getAttribute("UserLogin");
%>


<!DOCTYPE html>
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>Bienvenido</title>  
</head>  
<body>  
    <h3>Correcto!!!</h3>  
    
    <p> <%=UserObject.getNameUser() %> </p>
        

</body>  
</html>  
