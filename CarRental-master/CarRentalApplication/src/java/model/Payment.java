package model;

import java.util.Random;

public class Payment
{
    private int id, creditCardNum, cvCode;
    private String firstName, lastName, address, aptSuit, city, state, zipcode, 
            phoneNum, email, creditCardType, expirationDate;

    public int getId()
    {
        return id;
    }

    public void setId(int length)
    {
        int ID = 0;
        Random random = new Random();
        
        for(int i = 0; i < length; i++)
        {
            ID += random.nextInt(10);
        }
        
        this.id = ID;
    }

    public int getCreditCardNum()
    {
        return creditCardNum;
    }

    public void setCreditCardNum(int creditCardNum)
    {
        this.creditCardNum = creditCardNum;
    }

    public int getCvCode()
    {
        return cvCode;
    }

    public void setCvCode(int cvCode)
    {
        this.cvCode = cvCode;
    }

    public String getFirstName()
    {
        return firstName;
    }

    public void setFirstName(String firstName)
    {
        this.firstName = firstName;
    }

    public String getLastName()
    {
        return lastName;
    }

    public void setLastName(String lastName)
    {
        this.lastName = lastName;
    }

    public String getAddress()
    {
        return address;
    }

    public void setAddress(String address)
    {
        this.address = address;
    }

    public String getAptSuit()
    {
        return aptSuit;
    }

    public void setAptSuit(String aptSuit)
    {
        this.aptSuit = aptSuit;
    }

    public String getCity()
    {
        return city;
    }

    public void setCity(String city)
    {
        this.city = city;
    }

    public String getState()
    {
        return state;
    }

    public void setState(String state)
    {
        this.state = state;
    }

    public String getZipcode()
    {
        return zipcode;
    }

    public void setZipcode(String zipcode)
    {
        this.zipcode = zipcode;
    }

    public String getPhoneNum()
    {
        return phoneNum;
    }

    public void setPhoneNum(String phoneNum)
    {
        this.phoneNum = phoneNum;
    }

    public String getEmail()
    {
        return email;
    }

    public void setEmail(String email)
    {
        this.email = email;
    }

    public String getCreditCardType()
    {
        return creditCardType;
    }

    public void setCreditCardType(String creditCardType)
    {
        this.creditCardType = creditCardType;
    }

    public String getExpirationDate()
    {
        return expirationDate;
    }

    public void setExpirationDate(String expirationDate)
    {
        this.expirationDate = expirationDate;
    }
}
