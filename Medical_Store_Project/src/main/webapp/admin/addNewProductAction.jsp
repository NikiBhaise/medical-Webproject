<%@ page import="com.db.DBConnection"%>
<%@ page import="java.sql.*"%>
<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String category = request.getParameter("category");
String price = request.getParameter("price");
String status = request.getParameter("status");
try
{
	
	Connection con = DBConnection.createDbConnection();
	PreparedStatement ps = con.prepareStatement("insert into product(id,name,category,price,status) values(?,?,?,?,?); ");
	ps.setString(1, id);
	ps.setString(2, name);
	ps.setString(3, category);
	ps.setString(4, price);
	ps.setString(5, status);
	
	ps.executeUpdate();
	response.sendRedirect("addNewProduct.jsp?msg=done");
}
catch(Exception e){
	e.printStackTrace();
	response.sendRedirect("addNewProduct.jsp?msg=wrong");
}
%>