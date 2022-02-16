<%@ page import="com.db.DBConnection"%>
<%@ page import="java.sql.*"%>
<%@include file="header.jsp" %>

<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>
h3
{
	color:  #243ffb;
	text-align: center;
	 font-family: Georgia,'Times New Roman', Times, serif;
    font-size: 1.3em;
}
footer{
 font-family: Georgia,'Times New Roman', Times, serif;
    background-color:#414141;
	width:100%;
	height:170px;
	font-size:22px;
	text-align:center;
	 padding-top:10px;
	color:white;
} 
.fa {
  padding: 20px;
  font-size: 20px;
  width: 50px;
  text-align: center;
  text-decoration: none;
}
.fa:hover {
  opacity: 0.7;
}
.fa-facebook {
  background: #3B5998;
  color: white;
}
.fa-instagram {
  background: #bc0537;
  color: white;
}
.fa-linkedin-square {
  background: #0000ff;
  color: white;
}

</style>
</head>
<body>
<div style="color: black;font-family: Times, serif; text-align: center; font-size: 35px;">Home <i class="fa fa-institution"></i></div>
<%
String msg = request.getParameter("msg");
if("added".equals(msg)){
%>
<h3 class="alert">Medicine added successfully!</h3>
<%} %>
<%
if("exist".equals(msg)){
%>
<h3 class="alert">Medicine already exist in you cart! Quantity  increased!</h3>
<%} %>
<%
if("invalid".equals(msg)){%>
<h3 class="alert">Something went wrong! Please Try again!</h3>
<%} %>
<table>
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> Price</th>
            <th scope="col">Add to cart <i class='fas fa-cart-plus'></i></th>
          </tr>
        </thead>
        <tbody>
<%
try{
	Connection con =DBConnection.createDbConnection();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from product where status='active'");
	while(rs.next())
	{
%>
          <tr>
            <td><%=rs.getString(1) %> </td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><i class="fa fa-inr"></i> <%=rs.getString(4)%></td>
            <td><a href="addToCartAction.jsp?id=<%=rs.getString(1) %>">Add to cart <i class='fas fa-cart-plus'></i></a></td>
          </tr>
<%
}
}
catch(Exception e){
	e.printStackTrace();
}%>
        </tbody>
      </table>
      <br>
      <br>
      <br>
<footer>
	 &copy;2022 DW <br><br><br>
	<a href="https://instagram.com/ " class="fa fa-instagram"></a> 
    <a href="https://www.facebook.com/ " class="fa fa-facebook"></a>
    <a href="https://www.linkedin.com/in/nikita-bhaise-5b299a1b4" class="fa fa-linkedin-square"></a>
     <br>
    
</footer>
</body>
</html>

