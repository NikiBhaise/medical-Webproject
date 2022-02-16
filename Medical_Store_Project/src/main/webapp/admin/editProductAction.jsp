<%@ page import="com.db.DBConnection"%>
<%@ page import="java.sql.*"%>
<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String category= request.getParameter("category");
String price = request.getParameter("price");
String status = request.getParameter("status");

try{
	Connection con = DBConnection.createDbConnection();
	Statement st = con.createStatement();
	st.executeUpdate("update product set name='"+name+"',category='"+category+"',price='"+price+"',status='"+status+"' where id='"+id+"'");     
	if(status.equals("inactive")){
		//if product status is inactive so we will delete that product from customer's  page , also from cart
		st.executeUpdate("delete from cart where product_id='"+id+"' and address is NULL");
	}
	response.sendRedirect("allProductEditProduct.jsp?msg=done");
}
catch(Exception e){
	e.printStackTrace();
	response.sendRedirect("allProductEditProduct.jsp?msg=wrong");
}
%>