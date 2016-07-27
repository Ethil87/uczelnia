<%-- 
    Document   : RemoveCar
    Created on : 2016-01-14, 2016-01-14 17:35:19
    Author     : ilv
--%>

<%@page import="pl.michtavx.projekt.ManagerPolaczen"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="samochod" class="pl.michtavx.projekt.Samochod" scope="session"/>
<jsp:setProperty name="samochod" property="*"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Samochód usunięty</title>
    </head>
    <body>
        <h1> 
        Samochód usunięty.
        <%
        ManagerPolaczen manPolaczen = new ManagerPolaczen();
        manPolaczen.nawiazPolaczenie();
        manPolaczen.usunSamochod(samochod);
        manPolaczen.zamknijPolaczenie();    
        %>
        </h1>
        <BR>
        <BR>
        <A HREF="index.jsp">Powrot</A>
    </body>
</html>