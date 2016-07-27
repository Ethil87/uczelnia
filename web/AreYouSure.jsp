<%-- 
    Document   : AreYouSure
    Created on : 2016-01-18, 2016-01-18 17:25:30
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
            Samochoód który został wybrany do usunięcia to:<BR><BR>
            Id: <%= samochod.getId() %><BR>
            Model: <%= samochod.getModel() %><BR>
            Wersja: <%= samochod.getWersja() %><BR>
            Silnik: <%= samochod.getSilnik() %><BR>
            Moc: <%= samochod.getMoc() %><BR>
            Cena: <%= samochod.getCena() %><BR>
            Status: <%= samochod.getStatus() %><BR>

        </h1>
        
      
        <FORM METHOD=POST ACTION = "RemoveCar.jsp">
        <BUTTON NAME=id ONCLICK="alert('Usuwam samochód')">USUŃ</BUTTON>
        </FORM>
       
        <BR>
        <BR>
        <A HREF="index.jsp">Powrot</A>
    </body>
</html>