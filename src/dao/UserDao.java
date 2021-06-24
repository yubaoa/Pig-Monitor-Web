package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import bean.User;
import utils.DBUtils;



public class UserDao {
	public int  isValid(String username,String password) {
		int  valid =0;
		Connection conn=DBUtils.getConnection();
		try {
			PreparedStatement stat=conn.prepareStatement("select password from Manager where username=(?)");
			stat.setString(1, username);
			ResultSet rs=stat.executeQuery();
			valid=0;//用户不存在
			if(rs.next())
			{

				String pwd= rs.getString("password");
				if(pwd.equals(password))
				{
					valid=1;//密码正确
					
				}
				else {
					valid=-1;//密码不正确
				}
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtils.closeQuietly(conn);
		}
		return valid;
	}

	public User getall(String username) {
		Connection conn=DBUtils.getConnection();
		User user=new User();
		
		try {
			PreparedStatement stat=conn.prepareStatement("select * from users where username=?");
			stat.setString(1, username);
			ResultSet rs=stat.executeQuery();
			rs.next();
			user.setUsername(username);
			user.setPassword("password");

			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtils.closeQuietly(conn);
		}
		return user;
	}
	public void set(String username,String password,String name,String tel,String classes) {
		Connection conn=DBUtils.getConnection();
		
		try {
			PreparedStatement stat=conn.prepareStatement("update users set password=? ,name=? ,tel=? , class=? where username=? ");
			stat.setString(1, password);
			stat.setString(2, name);
			stat.setString(3, tel);
			stat.setString(4,classes);
			stat.setString(5, username);
			stat.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtils.closeQuietly(conn);
		}
	}
}
