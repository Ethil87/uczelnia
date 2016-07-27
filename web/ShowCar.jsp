<%-- 
    Document   : ShowCar
    Created on : 2016-01-09, 2016-01-09 18:06:32
    Author     : ilv
--%>

<%@page import="pl.michtavx.projekt.Samochod"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="pl.michtavx.projekt.ManagerPolaczen"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String name = request.getParameter("model");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Samochody <%=name%></title>
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
                    if (name.equals(sam.getModel())) { %>
                        <%="Id: " + sam.getId() + "<br/>" + "Model: " + sam.getModel() + "<br/>" + "Wersja: " + sam.getWersja() + "<br/>" + "Silnik: " + sam.getSilnik()
                       + "<br/>" + "Moc: " + sam.getMoc() + "<br/>" + "Cena: " + sam.getCena() + "PLN<br/>" + "Status: " + sam.getStatus() + "<br/>" + "<br/>"  %>
                    <% }
                }
            %>
        </h1>
        <BR>
        <BR>
        <A HREF="index.jsp">Powrot</A>
    </body>
</html>
