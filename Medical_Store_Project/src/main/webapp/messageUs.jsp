<%@ page import="com.db.DBConnection"%>
<%@ page import="java.sql.*"%>
<%@include file="header.jsp" %>

<html>
<head>
<link rel="stylesheet" href="css/messageUs.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>messageUs</title>
</head>
<body>
<div style="color: black;font-family: Georgia; text-align: center; font-size: 30px;">Message Us <i class='fas fa-comment-alt'></i></div>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg)){
%>
<h3 style="text-align:center; color:blue;">Message successfully sent. Our team will contact you soon!</h3>
<%} %>
<%
if("invalid".equals(msg)){
%>
<h3 style="text-align:center; ">Some thing Went Wrong! Try Again!</h3>
<%} %>
<form action="messageUsAction.jsp" method="post">
<hr>
<input class="input-style" name="subject" type="text" placeholder="Subject" required>
<hr>
<textarea class="input-style" name="body" placeholder="Enter your message!" required></textarea>
<hr>
<button class="button" type="submit" >Send<i class="far fa-arrow-alt-circle-right"></i></button>
</form>
<br><br><br>
<footer>
	 &copy;2022 DW <br><br>
	<a href="https://instagram.com/ " class="fa fa-instagram"></a> 
    <a href="https://www.facebook.com/ " class="fa fa-facebook"></a>
    <a href="https://www.linkedin.com/in/nikita-bhaise-5b299a1b4" class="fa fa-linkedin-square"></a>
     <br>  
</footer>
</body>
</html>