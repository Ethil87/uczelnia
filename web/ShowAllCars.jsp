<%-- 
    Document   : ShowAllCars
    Created on : 2016-01-14, 2016-01-14 18:26:09
    Author     : ilv
--%>

<%@page import="pl.michtavx.projekt.Samochod"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="pl.michtavx.projekt.ManagerPolaczen"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    //String name = request.getParameter("model");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Samochody - Skoda</title>
    </head>
    <body>
        <h1>
            <%
                ManagerPolaczen manPolaczen = new ManagerPolaczen();
                List car;

                manPolaczen.nawiazPolaczenie();
                car = manPolaczen.wybierzSamochod();
                manPolaczen.zamknijPolaczenie();
                
                Iterator iter = car.iterator();
                while (iter.hasNext()) {
                    Samochod sam = (Samochod) iter.next();
                    //if (name.equals(sam.getModel()))  
                    %><%="Id: " + sam.getId() + "<br/>" + "Model: " + sam.getModel() + "<br/>" + "Wersja: " + sam.getWersja() + "<br/>" + "Silnik: " + sam.getSilnik()
                       + "<br/>" + "Moc: " + sam.getMoc() + "<br/>" + "Cena: " + sam.getCena() + "PLN<br/>" + "Status: " + sam.getStatus() + "<br/>" + "<br/>"  %>
                    <% 
                }
            %>
        </h1>
        <BR>
        
        <h1>Edytuj samochód</h1>
            <FORM METHOD=POST ACTION="UpdateCar.jsp"><BR><BR>
            Podaj id: <INPUT TYPE=TEXT NAME=id SIZE=20><BR> <BR>
            Podaj model: <INPUT TYPE=TEXT NAME=model SIZE=20><BR><BR>
            Podaj wersje: <INPUT TYPE=TEXT NAME=wersja SIZE=20><BR><BR> 
            Podaj silnik: <INPUT TYPE=TEXT NAME=silnik SIZE=20><BR><BR>
            Podaj moc: <INPUT TYPE=TEXT NAME=moc SIZE=20><BR><BR> 
            Podaj cene: <INPUT TYPE=TEXT NAME=cena SIZE=20><BR><BR> 
            Podaj status: <INPUT TYPE=TEXT NAME=status SIZE=20><BR><BR>  
            <INPUT TYPE=SUBMIT>
            </FORM>
        
        <h1>Usuń samochód</h1>
            <FORM METHOD=POST ACTION="AreYouSure.jsp">
            Podaj ID samochodu: <INPUT TYPE=TEXT NAME=id SIZE=20> <INPUT TYPE=SUBMIT>
            </FORM>
        <BR>
        <BR>
        <A HREF="index.jsp">Powrot</A>
    </body>
</html>