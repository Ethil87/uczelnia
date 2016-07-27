/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pl.michtavx.projekt;

/**
 *
 * @author ilv
 */
public class Samochod {
    
    //obiekty, które zostaną wykorzystane
    //przy dodawaniu samochodu do bazy danych
    private int id;
    private String model;
    private String wersja;
    private String silnik;
    private String moc;
    private String status;
    private int cena;
    //---------------------------//
    
    
    public int getId() { // metoda zwracająca ID
        return id;
    }

    public void setId(int id) { // metoda ustawiająca ID
        this.id = id;
    }
    
    public String getModel() { // metoda zwracająca wartość modelu
        return model;
    }

    public void setModel(String model) { // metoda ustawiająca model
        this.model = model;
    }
    
    public String getWersja() { // metoda zwracająca wartość wersji
        return wersja;
    }

    public void setWersja(String wersja) { // metoda ustawiająca wersje
        this.wersja = wersja;
    }
    
    public String getSilnik() { // metoda zwracająca wartość silnika
        return silnik;
    }

    public void setSilnik(String silnik) { // metoda ustawiająca wartość silnika
        this.silnik = silnik;
    }
    
    public String getMoc() { // metoda zwracająca wartość mocy
        return moc;
    }

    public void setMoc(String moc) { // metoda ustawiająca wartość mocy
        this.moc = moc;
    }
   
    public String getStatus() { // metoda zwracająca wartość statusu
        return status;
    }

    public void setStatus(String status) { // metoda ustawiająca wartość statusu
        this.status = status;
    }
  
    public int getCena() { // metoda zwracająca wartość ceny
        return cena;
    }

    public void setCena(int cena) { // metoda ustawiająca wartość ceny
        this.cena = cena;
    }
}
