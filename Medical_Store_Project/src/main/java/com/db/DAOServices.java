package com.db;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.data.UserData;

public class DAOServices {
	

	Connection c=DBConnection.createDbConnection();
	PreparedStatement p;
	public int insertAccountData(UserData acc) {
		int cnt=0;
		try {
			p=c.prepareStatement("INSERT INTO users(name ,email , mob , SecurityQuestion , answer , password) VALUES(?,?,?,?,?,?)");
			//p.setInt(1,acc.getAccNo());
			p.setString(1,acc.getName());
			p.setString(2,acc.getMail());
			p.setInt(3,acc.getMob());
			p.setString(4,acc.getSecurityQuestion());
			p.setString(5,acc.getanswer());
			p.setString(6, acc.getPassword());
			cnt=p.executeUpdate();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return cnt;
	}

	
	public UserData retriveAccDetails(int accNo) {
		UserData acc=null;
		try {
			p=c.prepareStatement("select * from users1 where Mail=?");
			ResultSet rs=p.executeQuery();
			if(rs.next()) { 
				  int mob=rs.getInt(2);
				  String name=rs.getString(1);
				  String mail=rs.getString(3);
				  String pass=rs.getString(6);
				  String SecurityQuestion=rs.getString(4);
				  String answer=rs.getString(5);
				  
				  acc=new UserData(name ,mail , mob , SecurityQuestion , answer , pass);
				  } 
			else{
			  System.out.println("Record not found"); 
			 }
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return acc;
	}
	
	public UserData displayAccNo(int mob) {
		UserData acc=new UserData();
		try {
			p=c.prepareStatement("select * from users where Mob=?");
			p.setInt(1, mob);
			ResultSet rs=p.executeQuery();
			if(rs.next()) {
				acc.setName(rs.getString(null));
				
			}
			else {
				System.out.println("Cannot find details....");	
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return acc;
		
	}

	public void updateData(String name, String newPass) {
		 try {
			  	p=c.prepareStatement("updateusers set password=? where User_name=?"); 
			  	p.setString(1, newPass); 
			  	p.setString(2, name); 
			  	p.executeUpdate();
		  }
		  catch(Exception e) { 
			  e.printStackTrace(); 
		  } 
		  }
		
	}
	
