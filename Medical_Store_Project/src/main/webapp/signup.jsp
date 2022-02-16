<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style2.css">
<title>Sign up</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
  <form action="signupAction.jsp" method="post">
  <input type="text" name="name" placeholder = "Enter Name" required>
  <input type="email" name="email" placeholder = "Enter Email" required>
  <input type="number" name="mobileNumber" placeholder = "Enter Mobile Number" required>
  <select name="securityQuestion" required>
  
  <option value="What elementary school did you attend ?">What elementary school did you attend ?</option>
   <option value="What is the name of your first pet ?">What is the name of your first pet ?</option>
    <option value="What is the name of your best friend ?">What is the name of your best friend ?</option>
     <option value="What is name of your celebrity crush ?">What is name of your celebrity crush ?</option>
  </select>
   <input type="text" name="answer" placeholder = "Enter your answer !" required>
    <input type="password" name="password" placeholder = "Enter password" required>
    <input type="submit" value="Signup">
  </form>  
      <h2><a href="login.jsp">Login</a></h2>
      <h2><a href="msfp.jsp"><i class='fas fa-arrow-circle-left'>Back</i></a></h2>
  </div>
  <div class='whysign1'>
<%
String msg = request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h2>Successfully Registered !</h2>
<%} %>
<%
if("invalid".equals(msg)){
%>
<h2>Something Went Wrong! Please Try Again !</h2>
<%} %>
    <h1>Medical Shop </h1>
    <p>The Online Medical Management  System is the application that allows
     the people<br> to order medicine online and also consult with
      <b>Doctor's</b> in emergency.</p>
  </div>
</div>

</body>
</html>