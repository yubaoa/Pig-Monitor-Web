package dao;

import bean.Pig;
import utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.*;
import dao.DAO;
public class PigDao extends DAO<Pig>{
    ArrayList<Pig> Pigs = new ArrayList<>();
    Connection connection = DBUtils.getConnection();
    public ArrayList<Pig> getpiglist() {
        ArrayList<Pig> piglist = new ArrayList<>();
        try {
            PreparedStatement stat = connection.prepareStatement("select * from pig order by (id+0)");
            ResultSet rs = stat.executeQuery();
            while (rs.next()) {

                Pig pig = new Pig();
                pig.setPigid(rs.getString("id"));
                pig.setPighouseid(rs.getString("houseid"));
                pig.setSex(rs.getString("sex"));
                pig.setStatus(rs.getString("status"));
                pig.setType(rs.getString("type"));
                pig.setHealthIndex(rs.getDouble("healthIndex"));
                pig.setAge(rs.getString("age"));
                piglist.add(pig);

            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return piglist;
    }
    public ArrayList<Pig> getpigs() {

        try {
            PreparedStatement stat = connection.prepareStatement("{call getpigs}");
            ResultSet rs = stat.executeQuery();
            while (rs.next()) {
                String pigid = rs.getString("id");
                Double weight = rs.getDouble("weight");
                Double bodytemperature = rs.getDouble("temperature");
                String heartrate = rs.getString("heartrate");
                String age = rs.getString("age");
                Date date = rs.getTimestamp("time");
                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                String datestring = formatter.format(date);

                Pig pig = new Pig();
                pig.setPigid(pigid);
                pig.setWeight(weight);
                pig.setHeartrate(heartrate);
                pig.setRecorddate(datestring);
                pig.setAge(age);
                pig.setStatus(rs.getString("status"));
                pig.setSex(rs.getString("sex"));
                pig.setBodytemperature(bodytemperature);
                Pigs.add(pig);
                System.out.println(pig.getRecorddate());
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return Pigs;
    }

    public ArrayList<Pig> getpigrecords(String id) {
        String url = null;
        if (id != null || id.length() != 0) {
            url = "select pig_detail.*,datediff(yy,pig.birthday,GETDATE()) age from pig_detail,pig where pig_detail.id=? and pig_detail.id=pig.id order by pig_detail.time asc ";
        } else {
            url = "select pig_detail.*,datediff(yy,pig.birthday,GETDATE()) age from pig_detail,pig where  pig_detail.id=pig.id order by pig_detail.time asc ";
        }
        try {
            PreparedStatement stat = connection.prepareStatement(url);
            stat.setString(1, id);
            ResultSet rs = stat.executeQuery();
            while (rs.next()) {
                String pigid = rs.getString("id");
                Double weight = rs.getDouble("weight");
                Double bodytemperature = rs.getDouble("temperature");
                String heartrate = rs.getString("heartrate");
                String age = rs.getString("age");
                Date date = rs.getTimestamp("time");
                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                String datestring = formatter.format(date);
                Pig pig = new Pig();
                pig.setPigid(pigid);
                pig.setWeight(weight);
                pig.setHeartrate(heartrate);
                pig.setRecorddate(datestring);
                pig.setAge(age);
                pig.setBodytemperature(bodytemperature);
                Pigs.add(pig);

            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return Pigs;
    }

    public Map<String, String> pigsexamount() {
        Map<String, String> pigsexnum = new HashMap<String, String>();
        try {

            PreparedStatement stat = connection.prepareStatement("select sex,count(*)as num  from pig group by sex;");
            ResultSet rs = stat.executeQuery();
            while (rs.next()) {
                String sex = rs.getString("sex");
                Integer num = rs.getInt("num");
                pigsexnum.put(sex, String.valueOf(num));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return pigsexnum;
    }
    public int getamount() {
        Integer num=0;
        try {

            PreparedStatement stat = connection.prepareStatement("select count(*)as num  from pig ");
            ResultSet rs = stat.executeQuery();
            while (rs.next()) {

                 num = rs.getInt("num");

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return num;
    }

    public Map<String, String> pigstatus() {
        Map<String, String> pigstatus = new HashMap<String, String>();
        try {

            PreparedStatement stat = connection.prepareStatement("select status ,count(*) num from pig Group by  status;");
            ResultSet rs = stat.executeQuery();
            while (rs.next()) {
                String sex = rs.getString("status");
                Integer num = rs.getInt("num");
                pigstatus.put(sex, String.valueOf(num));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return pigstatus;
    }
    public void updatapiginf(Pig pig){
        String sql="update pig_detail set temperature = ?,heartrate = ?  where pigid =1";
        update(sql,pig.getBodytemperature(),pig.getHeartrate(),pig.getHeartrate());
    }
}