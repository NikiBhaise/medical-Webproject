<%@ page import="com.db.DBConnection"%>
<%@ page import="java.sql.*"%>
<%@include file="adminHeader.jsp" %>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>
body{
	  font-family: Georgia,'Times New Roman', Times, serif;
	  text-align:center;
}
h3{
	color: red ;
}
</style>
</head>
<body>
<div style="  color: #303454;font-weight: bold; font-size: 35px; padding :20px;">Messages Received <i class='fas fa-comment-alt'></i></div>
<table>
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Email</th>
            <th scope="col">Subject</th>
            <th scope="col">Body</th>
          </tr>
        </thead>
        <tbody>
       <%
       try{
    	   Connection con = DBConnection.createDbConnection();
    	   Statement st = con.createStatement();
    	   ResultSet rs = st.executeQuery("select * from message");
    	   while(rs.next()){
    		
       %>
          <tr>
            <td><%=rs.getString(1) %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><%=rs.getString(4) %></td>
          </tr>
         <%
         }
         }
         catch(Exception e){
        	 e.printStackTrace();
         }
         %>
        </tbody>
      </table>
      <br>
      <br>
      <br>

</body>
</html>