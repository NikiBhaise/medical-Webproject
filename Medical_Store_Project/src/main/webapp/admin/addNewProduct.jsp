<%@ page import="com.db.DBConnection"%>
<%@ page import="java.sql.*"%>
<%@include file="adminHeader.jsp" %>

<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Add New Medicine</title>
</head>
<body>
<%
String msg = request.getParameter("msg");
if("done".equals(msg)){
%>
<h3 class="alert">Medicine Added Successfully!</h3>
<%} %>
<%
if("wrong".equals(msg)){
%>
<h3 class="alert">Some thing went wrong! Try Again!</h3>
<%} %>

<%
int id=1;
try{
	Connection con = DBConnection.createDbConnection();   
	Statement st= con.createStatement();
	ResultSet rs= st.executeQuery("select max(id) from product ") ; 
	while(rs.next()){
		id= rs.getInt(1);
		id= id+1;
	}
	
}
catch(Exception e){
	e.printStackTrace();
}
%>
<form action="addNewProductAction.jsp" method="post">
<h2 style="color: #303454;font-size: 25px; font-weight: 550;text-align: center;">Product ID: <%out.println(id);%> </h2>
<input type="hidden" name="id" value="<%out.println(id);%>">

<div class="left-div">
 <h3 style="color:white;">Enter Name</h3>
 <input class="input-style" type="text" name="name" placeholder="Enter Name" required>
<hr>
</div>

<div class="right-div">
<h3>Enter Category</h3>
  <input class="input-style" type="text" name="category" placeholder="Enter Category" required>
<hr>
</div>

<div class="left-div">
<h3>Enter Price</h3>
  <input class="input-style" type="number" name="price" placeholder="Enter Price" required>
<hr>
</div>

<div class="right-div">
<h3>Status</h3>    <!-- Here Active can be used -->
   <select class="input-style" name="status">
   <option value="active">active</option>
   <option value="inactive">inactive</option>
   </select>
<hr>
</div>
<button class="button">Save  <i class='far fa-arrow-alt-circle-right'></i>  </button>
</form>

<br><br><br>
</body>
</html>