<%@ page import="com.db.DBConnection"%>
<%@ page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp" %>

<!DOCTYPE html >
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<title>Change Details</title>
<style>
hr
{width:70%;}</style>
</head>
<body>
<%
try{
	Connection con= DBConnection.createDbConnection();
	Statement st = con.createStatement();
	ResultSet rs= st.executeQuery("select * from users where email='"+email+"'");
	while(rs.next()){	
%>
<h3>Name: <%=rs.getString(1) %></h3>
<hr>
 <h3>Email:<%=rs.getString(2) %> </h3>
 <hr>
 <h3>Mobile Number:<%=rs.getString(3) %> </h3>
 <hr>
<h3>Security Question: <%=rs.getString(4) %> </h3>
<hr>
      <br>
      <br>
      <br>
<% }}
catch(Exception e){
	e.printStackTrace();
}%>
</body>
</html>