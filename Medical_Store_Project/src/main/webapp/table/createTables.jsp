<%@ page import="com.db.DBConnection"%>
<%@ page import="java.sql.*"%>
<%
try
{
	Connection con = DBConnection.createDbConnection();
	Statement st = con.createStatement();
	String q1 = "create table users(name varchar(100), email varchar(100) primary key, mobileNumber int , securityQuestion varchar(100) , answer varchar(100) , password varchar(100) , address varchar(300), city varchar(100) , state varchar(100) , country varchar(100))";                    
	String q2= "create table product(id int , name varchar(200), category varchar(100) , price int, status varchar(10))";  // it can be status or active 
	String q3= "create table cart(email varchar(100) , product_id int , quantity int , price int , total int , address varchar(100) , city varchar(100) , state varchar(100) , country varchar(100) , mobileNumber bigint , orderDate varchar(100), deliveryDate varchar(100),paymentMethod varchar(100), transactionId varchar(100), status varchar(10) )";
	String q4= "create table message(id int AUTO_INCREMENT, email varchar(100), subject varchar(200) , body varchar(1000), PRIMARY KEY(id))";
	//replace product name as Medicine for medical
	
	st.execute(q1);
	st.execute(q2);
	st.execute(q3);
	st.execute(q4);
//	System.out.print("Table Created");
	con.close();
}
catch(Exception e){
//	System.out.print(e);
	e.printStackTrace();
	
} 
%>

    