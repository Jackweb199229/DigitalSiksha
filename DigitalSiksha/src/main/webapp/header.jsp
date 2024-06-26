<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Home</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="style.css">

</head>
<body>

<header class="header">
   
   <section class="flex">

      <a href="home" class="logo">Digital</a>

      <form action="search.html" method="post" class="search-form">
         <input type="text" name="search_box" required placeholder="search courses..." maxlength="100">
         <button type="submit" class="fas fa-search"></button>
      </form>

      <div class="icons">
         <div id="menu-btn" class="fas fa-bars"></div>
         <div id="search-btn" class="fas fa-search"></div>
         <div id="user-btn" class="fas fa-user"></div>
         <div id="toggle-btn" class="fas fa-sun"></div>
      </div>

      <div class="profile">
         <img src="images/pic-1.jpg" class="image" alt="">
         <h3 class="name">Md Noman Quamar</h3>
         <p class="role">student</p>
         <a href="profile.html" class="btn">view profile</a>
         <div class="flex-btn">
         
         <%String email=(String) session.getAttribute("eid");
         if (email != null)
         {
        	 %>
    	    	 <a href="logout" class="option-btn">logout</a>
	         <%
         }
         
         else
         {
        	 %>
        	<a href="login" class="option-btn">login</a> 
         
      	
      	 <% } %>
         
           
            <a href="register" class="option-btn">register</a>
         </div>
      </div>

   </section>

</header>   

<div class="side-bar">

   <div id="close-btn">
      <i class="fas fa-times"></i>
   </div>

   <div class="profile">
      <img src="images/pic-1.jpg" class="image" alt="">
      <h3 class="name">Md Noman Quamar</h3>
      <p class="role">student</p>
      <a href="profile.html" class="btn">view profile</a>
   </div>

   <nav class="navbar">
      <a href="home"><i class="fas fa-home"></i><span>home</span></a>
      <a href="about"><i class="fas fa-question"></i><span>about</span></a>
      <a href="courses"><i class="fas fa-graduation-cap"></i><span>courses</span></a>
      <a href="teachers"><i class="fas fa-chalkboard-user"></i><span>teachers</span></a>
      <a href="contact"><i class="fas fa-headset"></i><span>contact us</span></a>
   </nav>

</div>