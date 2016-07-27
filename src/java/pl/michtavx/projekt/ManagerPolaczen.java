/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pl.michtavx.projekt;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
//import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ilv
 */
public class ManagerPolaczen {
    
    private static String dbURL = "jdbc:derby://localhost:1527/Skoda1";  // Obiekt typu String przechowujący adres bazy danych
    private static Connection conn = null; // Obiekt typu Connection, bez wartości
    private static Statement stmt = null; // Obiekt typu Statement, bez wartości
    
    public void nawiazPolaczenie() { // Metoda nawiązująca połączenie z bazą danych
        try { // Próba nawiązania połączenia z bazą danych
            Class.forName("org.apache.derby.jdbc.ClientDriver").newInstance();
            
            // Przypisanie do conn metody getConnection z DriverManager z aredem bazy
            conn = DriverManager.getConnection(dbURL); // Przypisanie do conn 
        } catch (Exception ex) { // Wyłapywanie błędów przy połączeniu
            ex.printStackTrace(); // Wyświetleni błędów
        }
    }
    
    public void dodajSamochod(Samochod samochod) { // Metoda dodająca samochód do bazy
        
        // Przypisanie do query polecenia wysyłanego do bazy danych w MySQL
        // Dodanie do tabeli SAMOCHOD wartości od ID aż po STATUS przy wykorzystaniu klasy Samochod
        String query = "INSERT INTO SAMOCHOD(ID, MODEL, WERSJA, SILNIK, MOC, CENA, STATUS) VALUES (" +
                samochod.getId() + ",'" + samochod.getModel() + 
                    "','" + samochod.getWersja() + "','" + samochod.getSilnik() + 
                    "','" + samochod.getMoc() + "'," + samochod.getCena() + ",'" + samochod.getStatus() + "'" + ")"; 
               
        try { // Próba wysłania wartości z query do bazy danych
            stmt = conn.createStatement(); // Przypisanie stworzenia komunikatu SQL
            stmt.executeUpdate(query); // Przekazanie polecenia MySQL
            stmt.close(); // Zakończenie przekazywania danych
        } catch (SQLException sqlExcept) { // Wyłapuje błędy przy przesyłaniu danych
            sqlExcept.printStackTrace(); // Wyświetlenie błędów
        }
    }
    
    public List wybierzSamochod(){ // Pobiera dane z bazy danych
        
        String query = "SELECT * FROM SAMOCHOD"; // Polecenie wybrania wszystkich danych z tabeli Samochod
        Samochod samochod; // Stworzenie obiektu samochod
        List samoList = new ArrayList(); // Stworzenie obietku samoList z przypisaniem ArrayList
        
        try{ // Próba ściągnięcia danych z bazy
            stmt = conn.createStatement(); // Tworzy obiekt do komunikacji z bazą SQL
            
            // Stworzenie obiektu ResultSet wykorzystanego niżej do sprawdzania czy istnieje następny rząd
            ResultSet results = stmt.executeQuery(query); 
            while (results.next()){ // Pętla wykonywana tak długo aż nie będzię więcej rzędów do zaczytania
                samochod = new Samochod();
                samochod.setId(results.getInt(1)); // Przypisanie wartości Id
                samochod.setModel(results.getString(2)); // Przypisanie wartości Model
                samochod.setWersja(results.getString(3)); // Przypisanie wartości Wersja
                samochod.setSilnik(results.getString(4)); // Przypisanie wartości Silni
                samochod.setMoc(results.getString(5)); // Przypisanie wartości Moc
                samochod.setCena(results.getInt(6)); // Przypisanie wartości Cena
                samochod.setStatus(results.getString(7)); // Przypisanie wartości Status
                
                samoList.add(samochod); // dodanie do kontenera obiektu samochod
            }
            results.close(); // Zakmnięcie połączenia
            stmt.close(); // Zakończenie przekazywania danych
        }catch(SQLException sqlEx){
            sqlEx.printStackTrace();
        }
        return samoList; // Zwrócenie zawartości samoList
    }
    
    public void zamknijPolaczenie(){ // Zamknięcie połączenia z bazą danych
        try{
            if(stmt != null){ // sprawdzenie czy stmt został zakończony
                stmt.close(); // zamyka połączenie
            }
            if(conn != null){ // sprawdzenie czy połącznie zostało zakmnięte
                DriverManager.getConnection(dbURL + ";shutdown=true");
                conn.close();
            }
        }catch(SQLException sqlE){ // wyłapywanie błędów
        }
    }
    
    public void usunSamochod(Samochod samochod){ // Metoda usuwająca samochód z bazy danych otrzymuje obiekt samochod
        
        // polecenie służące do usunięcia samochodu wg. ID
        String query = "DELETE FROM SAMOCHOD WHERE id IN (" + samochod.getId() +")";
        try{ // próba nawiązania połączenia
            stmt = conn.createStatement(); 
            //int results = 
            stmt.executeUpdate(query); // wysłanie polecenia do bazy MySQL 
           //results.close();
            stmt.close(); // zamknięcie kominikacji
        }catch(SQLException sqlEx){ // wyłapanie błędów
            sqlEx.printStackTrace(); // wyświetlenie błędów
        }
    }
    
    public void updateSamochod(Samochod samochod) { // Metoda aktualizująca dane w bazie, otrzymuje obiekt samochod
        
        //Polecenie wykorzystane do aktualizacji bazy 
        String query = "UPDATE SAMOCHOD SET MODEL='" + samochod.getModel() + 
                    "',WERSJA='" + samochod.getWersja() + "',SILNIK='" + samochod.getSilnik() + 
                    "',MOC='" + samochod.getMoc() + "',CENA=" + samochod.getCena() + ",STATUS='" +
                    samochod.getStatus() + "' WHERE ID=" + samochod.getId(); 
               
        try { // próba nawiązania połączenia
            stmt = conn.createStatement();
            stmt.executeUpdate(query); // wysłanie polecenia do bazy danych
            stmt.close(); // zakmnięcie komunikacji
        } catch (SQLException sqlExcept) { // przechwycenie błędów w komunikacji
            sqlExcept.printStackTrace(); // wyświetlenie błędów
        }
    }
}
