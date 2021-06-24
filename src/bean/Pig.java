package bean;

import com.alibaba.fastjson.annotation.*;
import java.util.Date;
public class Pig extends  Object{

    private String pigid;
    private Double weight;
    private Double bodytemperature;
    private String heartrate;
    private String age;
    private String recorddate;
    private String sex;
    private String status;
    private String type;
    private String pighouseid;
    private Double healthIndex;
    public Double getHealthIndex() {
        return healthIndex;
    }
    public void setHealthIndex(Double healthIndex) {
        this.healthIndex = healthIndex;
    }
    public String getPighouseid() {
        return pighouseid;
    }
    public void setPighouseid(String pighouseid) {
        this.pighouseid = pighouseid;
    }
    public String getType() {
        return type;
    }
    public void setType(String type) {
        this.type = type;
    }
    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getPigid() {
        return pigid;
    }

    public void setPigid(String pigid) {
        this.pigid = pigid;
    }

    public Double getWeight() {
        return weight;
    }

    public void setWeight(Double weight) {
        this.weight = weight;
    }

    public Double getBodytemperature() {
        return bodytemperature;
    }

    public void setBodytemperature(Double bodytemperature) {
        this.bodytemperature = bodytemperature;
    }

    public String getHeartrate() {
        return heartrate;
    }

    public void setHeartrate(String heartrate) {
        this.heartrate = heartrate;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getRecorddate() {
        return recorddate;
    }

    public void setRecorddate(String recorddate) {
        this.recorddate = recorddate;
    }







}
