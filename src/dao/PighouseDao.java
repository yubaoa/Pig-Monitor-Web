package dao;

import bean.PigHouse;
import bean.Smogrcd;
import utils.DBUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.*;

public class PighouseDao extends DAO<PigHouse>{
    Connection connection= DBUtils.getConnection();
    public void updatapighouseinf(PigHouse pighouse){
        String sql="update pig_house_detail set temperature = ?,humidity= ?,smog=?,illumination = ? time = where houseid = ?";
        update(sql,pighouse.getTemperature(),pighouse.getHumidity(), pighouse.getSmog(),pighouse.getIllumination(),1);
    }
    public ArrayList<String> gethouseid(){
        ArrayList<String>houseid=new ArrayList<>();
        try {
            PreparedStatement stat = connection.prepareStatement("select houseid from pig_house ");
            ResultSet rs=stat.executeQuery();
            while (rs.next()){

                try {
                    String id=rs.getString("houseid");
                   houseid.add(id);


                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }

            } catch (SQLException e) {
                e.printStackTrace();
        }
        finally {
            DBUtils.closeQuietly(connection);
        }

        return houseid;

    }
    public ArrayList<PigHouse> getdata(String houseid){
        ArrayList<PigHouse>pighouselist=new ArrayList<>();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd hh-mm-ss");
        try {
            PreparedStatement stat = connection.prepareStatement("select * from pig_house_detail  where houseid = ? order by time  ASC");
            stat.setString(1,houseid);
            ResultSet rs=stat.executeQuery();
            while (rs.next()){
                try {
                    PigHouse pigHouse=new PigHouse();
                    pigHouse.setSmog((double) rs.getFloat("smog"));
                    Date date = rs.getTimestamp("time");
                    pigHouse.setRecordtime(formatter.format(date));
                    pigHouse.setIllumination((double) rs.getFloat("illumination"));
                    pigHouse.setTemperature((double) rs.getFloat("temperature"));
                    System.out.println((double) rs.getFloat("temperature"));
                    pighouselist.add(pigHouse);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        finally {
            DBUtils.closeQuietly(connection);
        }

        return pighouselist;

    }
    public Smogrcd gethousedetail(String houseid){
        Smogrcd smogrcd=new Smogrcd();
        ArrayList<String>temprlist=new ArrayList<String>();
        ArrayList<String>timelist=new ArrayList<String>();
        try {
            PreparedStatement stat = connection.prepareStatement("select temperature,time from pig_house_detail where houseid=?");
            stat.setString(1,houseid);
            ResultSet rs=stat.executeQuery();
            while (rs.next()){

                try {
                    String temperature=rs.getString("temperature");
                    temprlist.add(temperature);//将得到的数据加入到list中
//                    String humidity=rs.getString("humidity");
//                    String illumination=rs.getString("illumination");
                    Date date = rs.getTimestamp("time");
                    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd hh-mm-ss");
                    String date_string = formatter.format(date);
                    timelist.add(date_string);
//                    housedetail.put(humidity,time);
//                    housedetail.put(illumination,time);

                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        finally {
            DBUtils.closeQuietly(connection);
        }
        return smogrcd;

    }
    public ArrayList<PigHouse>gethouses(ArrayList<String>ids) {
        ArrayList<PigHouse>houses=new ArrayList<>();
        Connection connection= DBUtils.getConnection();
        PreparedStatement stat = null;
        try {
            stat = connection.prepareStatement("select TOP 1 * from pig_house_detail where houseid=? order by  time desc ");
            for (String id:ids) {
                stat.setString(1, id);
                ResultSet rs = stat.executeQuery();
                PigHouse pigHouse = new PigHouse();
                while (rs.next()) {
                    Double temperature = rs.getDouble("temperature");
                    Double humidity = rs.getDouble("humidity");
                    Double smog = rs.getDouble("smog");
                    Double illumination = rs.getDouble("illumination");
                    Date date = rs.getTimestamp("time");
                    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                    String datestring = formatter.format(date);
                    pigHouse.setHouseid(id);
                    pigHouse.setTemperature(temperature);
                    pigHouse.setHumidity(humidity);
                    pigHouse.setIllumination(illumination);
                    pigHouse.setRecordtime(datestring);
                    pigHouse.setSmog(smog);
                    houses.add(pigHouse);
                }
            }
        }
    catch (SQLException e) {
            e.printStackTrace();
        }
           return houses;
    }
}
