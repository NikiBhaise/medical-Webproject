<%@ page import="com.db.DBConnection"%>
<%@ page import="java.sql.*"%>
<%@include file="header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Cart</title>
<style>
body{
	 font-family: Georgia,'Times New Roman', Times, serif;
}
h3
{
	color: #400080;
	text-align: center;
	font-family:serif;	 
    font-size: 1.3em;
}
footer{
	background-color:#414141;
	width:100%;
	height:150px;
	font-size:22px;
	text-align:center;
	 padding-top:10px;
	color:white;
}
.fa {
  padding: 20px;
  font-size: 30px;
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
<div style="color: black; font-family: Georgia; text-align: center; font-size: 35px; font-weight: 700;">My Cart <i class='fas fa-cart-arrow-down'></i></div>
<%
String msg = request.getParameter("msg");
if("notPossible".equals(msg)){
%>
<h3 class="alert">There is only one Quantity! So click on remove!</h3>
<%} %>
<% 
if("inc".equals(msg)){
%>
<h3 class="alert">Quantity  Increased Successfully!</h3>
<%} %>
<% 
if("dec".equals(msg)){
%>
<h3 class="alert">Quantity  Decreased Successfully!</h3>
<%} %>
<% 
if("removed".equals(msg)){
%>
<h3 class="alert">Product Successfully Removed!</h3>
<%} %>
<% 
if("notremoved".equals(msg)){
%>
<h3 class="alert">Something went Wrong !!!<br> Unable to remove product !!!<br> Please Try Again !!!</h3>
<%} %>
<table>
<thead>
<%
int total =0;
int sno=0;
try{
	
	Connection con = DBConnection.createDbConnection();
	Statement st = con.createStatement();
	ResultSet rs1 = st.executeQuery("select sum(total) from cart where email='"+email+"' and address is NULL");
	while(rs1.next()){
		total=rs1.getInt(1);
	}
%>
          <tr>
            <th scope="col" style="background-color:#414141;color:white;">Total: <i class="fa fa-inr"></i> <%out.println(total); %></th>
           <%if(total>0){ %> <th scope="col" style="background-color:#414147;color:white;"><a href="addressPaymentForOrder.jsp">Proceed to order</a></th><%} %>
          </tr>
        </thead>
        <thead>
          <tr>
          <th scope="col">S.No</th>
            <th scope="col">Product Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> price</th>
            <th scope="col">Quantity</th>
            <th scope="col">Sub Total</th>
            <th scope="col">Remove <i class='fas fa-trash-alt'></i></th>
          </tr>
        </thead>
        <tbody>
      <%
      ResultSet rs = st.executeQuery("select * from product inner join cart on product.id=cart.product_id and cart.email='"+email+"' and cart.address is NULL");
      while(rs.next()){
      %>
          <tr>
			<%sno=sno+1; %>
           <td><%out.println(sno); %> </td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><i class="fa fa-inr"></i><%=rs.getString(4) %> </td>
            <td><a href="incDecQuantityAction.jsp?id=<%=rs.getString(1)%>&quantity=inc"><i class='fas fa-plus-circle'></i></a> <%=rs.getString(8) %>  <a href="incDecQuantityAction.jsp?id=<%=rs.getString(1)%>&quantity=dec"><i class='fas fa-minus-circle'></i></a></td>
            <td><i class="fa fa-inr"></i> <%=rs.getString(10) %></td>
            <td><a href="removeFromCart.jsp?id=<%=rs.getString(1)%>">Remove <i class='fas fa-trash-alt'></i></a></td>
          </tr>
<%
      }
}
catch(Exception e){}
%>
        </tbody>
      </table>
      <br>
      <br>
      <br>
<footer>
	 &copy;2022 DW <br><br>
	<a href="https://instagram.com/ " class="fa fa-instagram"></a> 
    <a href="https://www.facebook.com/ " class="fa fa-facebook"></a>
    <a href="https://www.linkedin.com/in/nikita-bhaise-5b299a1b4" class="fa fa-linkedin-square"></a>
     <br>
    
</footer>
</body>
</html>