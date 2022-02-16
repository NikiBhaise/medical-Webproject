<%@ page import="com.db.DBConnection"%>
<%@ page import="java.sql.*"%>
<%@include file="header.jsp" %>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<style>
body{
 font-family: Georgia;}
footer{
	background-color:#cafbf3;
	width:100%;
	height:200px;
	font-size:22px;
	text-align:center;
	 padding-top: 30px;
	 font-family: Georgia;
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
<body>
<div style="color: black; text-align: center; font-size: 30px;">My Orders <i class='fab fa-elementor'></i></div>
<table>
        <thead>
          <tr>
            <th scope="col">S.No</th>
            <th scope="col">Product Name</th>
            <th scope="col">category</th>
            <th scope="col"><i class="fa fa-inr"></i>Price</th>
            <th scope="col">Quantity</th>
            <th scope="col"><i class="fa fa-inr"></i>Sub Total</th>
            <th scope="col">Order Date</th>
             <th scope="col">Expected Delivery Date</th>
             <th scope="col">Payment Method</th>
              <th scope="col">Status</th>
              
          </tr>
        </thead>
        <tbody>
<%
int sno=0;
try{
	Connection con=DBConnection.createDbConnection();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from cart inner join product where cart.product_id=product.id and cart.email='"+email+"' and cart.orderDate is not NULL");
	while(rs.next()){
		sno= sno+1;
	
%>
          <tr>
            <td><%out.println(sno); %></td>
            <td><%=rs.getString(17) %></td>
            <td><%=rs.getString(18) %></td>
            <td><i class="fa fa-inr"></i><%=rs.getString(19)%> </td>
            <td><%=rs.getString(3) %></td>
            <td><i class="fa fa-inr"></i><%=rs.getString(5)%> </td>
             <td><%=rs.getString(11)%></td>
              <td><%=rs.getString(12)%></td>
               <td><%=rs.getString(13)%></td>
               <td><%=rs.getString(15)%></td>
            </tr>
    <%}
	}
	catch (Exception e)
	{
		e.printStackTrace();
	}
	%>
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
     <br>. 
    
</footer>
</body>
</html>