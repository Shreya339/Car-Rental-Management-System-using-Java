package model;

public class Vehicles
{
    private String make, model, year, transimssion, ratePerMile, ratePerDay, taken;
    private int id;

    public int getId()
    {
        return id;
    }

    public void setId(int id)
    {
        this.id = id;
    }
    
    public String getMake()
    {
        return make;
    }

    public void setMake(String make)
    {
        this.make = make;
    }

    public String getModel()
    {
        return model;
    }

    public void setModel(String model)
    {
        this.model = model;
    }

    public String getYear()
    {
        return year;
    }

    public void setYear(String year)
    {
        this.year = year;
    }

    public String getTransimssion()
    {
        return transimssion;
    }

    public void setTransimssion(String transimssion)
    {
        this.transimssion = transimssion;
    }

    public String getRatePerMile()
    {
        return ratePerMile;
    }

    public void setRatePerMile(String ratePerMile)
    {
        this.ratePerMile = ratePerMile;
    }

    public String getRatePerDay()
    {
        return ratePerDay;
    }

    public void setRatePerDay(String ratePerDay)
    {
        this.ratePerDay = ratePerDay;
    }

    public String getTaken()
    {
        return taken;
    }

    public void setTaken(String taken)
    {
        this.taken = taken;
    }
}
