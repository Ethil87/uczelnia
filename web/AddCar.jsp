<%-- 
    Document   : AddCar
    Created on : 2016-01-09, 2016-01-09 18:06:00
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
        <title>Dodany samochód</title>
    </head>
    <body>
        <h1>
        Wprowadzono<BR>
        Id: <%= samochod.getId() %><BR>
        Model: <%= samochod.getModel() %><BR>
        Wersja: <%= samochod.getWersja() %><BR>
        Silnik: <%= samochod.getSilnik() %><BR>   
        Moc: <%= samochod.getMoc() %><BR> 
        Cena: <%= samochod.getCena() %><BR>
        Status: <%= samochod.getStatus() %><BR>
        
        <%
        ManagerPolaczen manPolaczen = new ManagerPolaczen();
        manPolaczen.nawiazPolaczenie();
        manPolaczen.dodajSamochod(samochod);
        manPolaczen.zamknijPolaczenie();    
        %>
        </h1>
        <BR>
        <BR>
        <A HREF="index.jsp">Powrot</A>
    </body>
</html>