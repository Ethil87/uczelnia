<%-- 
    Document   : index
    Created on : 2016-01-09, 2016-01-09 17:08:53
    Author     : ilv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Baza samochodów SKODA</title>
    </head>
    <body>
        <h1>Wyszukaj samochód</h1>
            <FORM METHOD=POST ACTION="ShowCar.jsp">
            Podaj model: <INPUT TYPE=TEXT NAME=model SIZE=20> <INPUT TYPE=SUBMIT>
            </FORM>
        <BR><BR>
        
        <h1>Pokaż całą bazę samochodów</h1>
            <FORM METHOD=POST ACTION="ShowAllCars.jsp">
            <BUTTON TYPE=SUBMIT>Pokaż</BUTTON>
            </FORM>
        <BR><BR>
        
        <h1>Dodaj samochód</h1>
            <FORM METHOD=POST ACTION="AddCar.jsp"><BR><BR>
            Podaj id: <INPUT TYPE=TEXT NAME=id SIZE=20><BR> <BR>
            Podaj model: <INPUT TYPE=TEXT NAME=model SIZE=20><BR><BR>
            Podaj wersje: <INPUT TYPE=TEXT NAME=wersja SIZE=20><BR><BR> 
            Podaj silnik: <INPUT TYPE=TEXT NAME=silnik SIZE=20><BR><BR>
            Podaj moc: <INPUT TYPE=TEXT NAME=moc SIZE=20><BR><BR> 
            Podaj cene: <INPUT TYPE=TEXT NAME=cena SIZE=20><BR><BR> 
            Podaj status: <INPUT TYPE=TEXT NAME=status SIZE=20><BR><BR>  
            <INPUT TYPE=SUBMIT>
            </FORM>
        <BR><BR>
        
        <h1>Usuń samochód</h1>
            <FORM METHOD=POST ACTION="AreYouSure.jsp">
            Podaj ID samochodu: <INPUT TYPE=TEXT NAME=id SIZE=20> <INPUT TYPE=SUBMIT>
            </FORM>
        
    </body>
</html>