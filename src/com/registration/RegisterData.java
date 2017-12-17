package com.registration;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class RegisterData {
	public String registerUser(RegisterBean registerBean)
	 {
		 String fullName = registerBean.getFullName();
		 String email = registerBean.getEmail();
		 String userName = registerBean.getUserName();
		 String password = registerBean.getPassword();
		 try{
			 Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("Jdbc:mysql://localhost:3306/details","root","root");
				String s1 = "insert into users values(NULL,?,?,?,?)";
				PreparedStatement ps = con.prepareStatement(s1);
				ps.setString(1,fullName);
				ps.setString(2,email);  
				ps.setString(3,userName);  
				ps.setString(4,password);  
				          
				int i= ps.executeUpdate();  
				if(i!=0) {
					return "SUCCESS";
				}
		 }
		 catch(Exception e) {
			 System.out.println(e);
		 }
		 return "Oops.. Something went wrong there..!"; 
	 }

}
