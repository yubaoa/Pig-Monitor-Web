package bean;

import java.util.ArrayList;

/**
 * @ProjectName PigWeb
 * @ClassName Smogrcd
 * @Date 2020/6/26 15:07
 * @Author baojiaqi
 */
public class Smogrcd extends Object{
    ArrayList<Double> smog;
    ArrayList<String> rectime;

    public Smogrcd() {
    }

    public ArrayList<Double> getSmog() {
        return smog;
    }

    public void setSmog(ArrayList<Double> smog) {
        this.smog = smog;
    }

    public ArrayList<String> getRectime() {
        return rectime;
    }

    public void setRectime(ArrayList<String> rectime) {
        this.rectime = rectime;
    }

    public Smogrcd(ArrayList<Double> smog, ArrayList<String> rectime) {
        this.smog = smog;
        this.rectime = rectime;
    }
}
