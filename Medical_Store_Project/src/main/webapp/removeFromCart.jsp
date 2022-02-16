<%@ page import="com.db.DBConnection"%>
<%@ page import="java.sql.*"%>
<%
String email=session.getAttribute("email").toString();
String product_id = request.getParameter("id");
try{
	Connection con= DBConnection.createDbConnection();
	Statement st = con.createStatement();
	st.executeUpdate("delete from cart where email='"+email+"' and product_id='"+product_id+"' and address is NULL");
	response.sendRedirect("myCart.jsp?msg=removed");
}
catch(Exception e){
	e.printStackTrace();
	response.sendRedirect("myCart.jsp?msg=notremoved");
}
%>