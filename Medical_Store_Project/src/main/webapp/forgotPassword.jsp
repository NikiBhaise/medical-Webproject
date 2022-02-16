<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/forgotPassword-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
  <form action="forgotPasswordAction.jsp" method="post">
  <input type="email" name="email" placeholder="Enter Email" required>
  <input type="number" name="mobileNumber" placeholder="Enter Mobile Number" required>
  <select name="securityQuestion"> 
   <option value="What elementary school did you attend ?">What elementary school did you attend ?</option>
   <option value="What is the name of your first pet ?">What is the name of your first pet ?</option>
    <option value="What is the name of your best friend ?">What is the name of your best friend ?</option>
     <option value="What is name of your celebrity crush ?">What is name of your celebrity crush ?</option>
  </select>
   <input type="text" name="answer" placeholder="Enter Answer" required>
   <input type="password" name="newPassword" placeholder="Enter your new Password" required>
   <input type="submit" value="Save">
  </form>
     
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
  
<%
String msg=request.getParameter("msg");
if("done".equals(msg)){
%>
<h1>Password Changed Successfully!</h1>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>
    <h2>Medical Management System</h2>
    <p> This system allows us to order medicine online ...etc</p>
  </div>
</div>
</body>
</html>