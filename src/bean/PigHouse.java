package bean;

import java.util.Date;

public class PigHouse {
    private  String houseid;
    private double temperature;
    private double humidity;
    private double smog;
    private double illumination;
    private String recordtime;
    public String getHouseid() {
        return houseid;
    }

    public void setHouseid(String houseid) {
        this.houseid = houseid;
    }

    public double getTemperature() {
        return temperature;
    }

    public void setTemperature(double temperature) {
        this.temperature = temperature;
    }

    public double getHumidity() {
        return humidity;
    }

    public void setHumidity(double humidity) {
        this.humidity = humidity;
    }

    public PigHouse(double smog) {
        this.smog = smog;
    }

    public double getIllumination() {
        return illumination;
    }

    public void setIllumination(double illumination) {
        this.illumination = illumination;
    }

    public PigHouse() {
    }

    public double getSmog() {
        return smog;
    }

    public void setSmog(double smog) {
        this.smog = smog;
    }

    public String getRecordtime() {
        return recordtime;
    }

    public void setRecordtime(String recordtime) {
        this.recordtime = recordtime;
    }


}
