<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<style>
body{
  background-color:black;
 
}
.prof{
	background-color: #eaeaea;    
	margin-left:20%; margin-right:20%;
	padding-left:5%; padding-right:5%;
}
nav{
 	  display:block;
 	
      overflow: hidden;
      font-family:'Times New Roman', Times, serif;
      font-weight: 400;
      font-size: 1.4em;
}nav a{
      
      display: block;
      color: black;
      text-align: center;
      padding: 14px 16px;
      text-decoration: none;
      font-size: 18px;
}


</style>
</head>
  <body>
    <br> <div class="prof"> 
    <nav>
   
    		 <h2><a href="home.jsp"><i class='fas fa-arrow-circle-left'>Back</i></a></h2>
    		<%String email=session.getAttribute("email").toString(); %>          
            <h2><a ><%out.println(email); %> <i class='fas fa-user-alt'></i></a></h2>          
            <a href="myCart.jsp">My Cart<i class='fas fa-cart-arrow-down'></i></a>
            <a href="myOrders.jsp">My Orders  <i class='fab fa-elementor'></i></a>
            <a href="changeDetails.jsp">Change Details <i class="fa fa-edit"></i></a>
            <a href="messageUs.jsp">Message Us <i class='fas fa-comment-alt'></i></a>
            <a href="about.jsp">About <i class="fa fa-address-book"></i></a>
            <a href="logout.jsp">Logout <i class='fas fa-share-square'></i></a>
            
          
           <br></nav> </div> 
 </body> 
 </html>      