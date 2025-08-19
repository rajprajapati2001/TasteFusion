<!DOCTYPE html>
<html lang="en" >
<style>

</style>  
<head>
  <meta charset="UTF-8">
  <title>About</title>
  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
    <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
    <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
    <link rel="stylesheet" href="css/login.css">
    <link rel="icon" href="images/tastefusion_mine_logo.png">

	  <style type="text/css">
	  #buttn{
		  color:#fff;
		  background-color: #5c4ac7;
	  }
	  </style>


    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animsition.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
  
</head>

<body style="background-image: url('images/imgi_1_food-seamless-pattern-black-white_350552-142.jpg');">
<header id="header" class="header-scroll top-header headrom">
            <nav class="navbar navbar-dark">
                <div class="container">
                    <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#mainNavbarCollapse">&#9776;</button>
                    <a class="navbar-brand" href="index.php"> <img class="img-rounded" style="height: 50px;" src="images/tastefusion.png" alt=""> </a>
                    <div class="collapse navbar-toggleable-md  float-lg-right" id="mainNavbarCollapse">
                       <ul style="margin-top: 10px;" class="nav navbar-nav">
                            <li class="nav-item"> <a class="nav-link active" href="index.php">Home <span class="sr-only">(current)</span></a> </li>
                            <li class="nav-item"> <a class="nav-link active" href="restaurants.php">Restaurants <span class="sr-only"></span></a> </li>
                            <li class="nav-item"> <a class="nav-link active" href="about_page.php">About <span class="sr-only"></span></a> </li>
                            
							<?php
						if(empty($_SESSION["user_id"]))
							{
								echo '<li class="nav-item"><a href="login.php" class="nav-link active">Login</a> </li>
							  <li class="nav-item"><a href="registration.php" class="nav-link active">Register</a> </li>';
							}
						else
							{
									
									
										echo  '<li class="nav-item"><a href="your_orders.php" class="nav-link active">My Orders</a> </li>';
									echo  '<li class="nav-item"><a href="logout.php" class="nav-link active">Logout</a> </li>';
							}

						?>
							 
                        </ul>
                    </div>
                </div>
            </nav>
        </header>

<table class="layout_table">
<tr>
<!--First Layout-->
<td id="first_layout">  
<div class="layouts" style="height: fit-content; background-blend-mode: luminosity;background-image: url(images/imgi_left_photo-17082025.jpg);background-size: cover;">
<span class="cursor typewriter-animation">About TasteFusion<br><br>
Welcome to TasteFusion, your ultimate destination for delightful culinary experiences! We believe that food is not just about sustenance it's a delightful journey that brings people together. That's why we created TasteFusion—a cutting-edge food ordering website designed to connect food lovers with an array of exquisite dining options from local restaurants right at their fingertips.<br>
At TasteFusion, we understand that convenience and variety are essential in today’s fast-paced world. Our platform features an easy-to-navigate user interface that enhances your online ordering experience. Here’s what you can expect from our website:<br>

<br><b>User-Friendly Experience</b><br>
With seamless <b>User Login and Registration</b>, setting up your TasteFusion account is quick and straightforward. Once registered, you gain instant access to a plethora of features tailored to enhance your food ordering journey.<br>

<br><b>Diverse Selection of Culinary Delights</b><br>
Our extensive catalog showcases <b>various food items</b> from a wide selection of cuisines. Whether you're craving spicy Indian delicacies, classic Italian pasta, or fresh sushi, TasteFusion brings a world of flavors right to your screen. Each dish is described in detail, featuring appetizing images that will ignite your taste buds and help you make the perfect choice.<br>

<br><b>Restaurant Partnerships</b><br>
TasteFusion partners with a <b>variety of local restaurants</b>, ensuring that you have the best options available in your area. From hidden gems to popular eateries, our site showcases the best of what your community has to offer. Discover new favorites or indulge in your tried-and-true classics—all just a few clicks away.<br>
</span>
</div>      
</td>

<!--Second Layout-->
<td>  

<div class="layouts">.<br><br>

<div class="about_center-grid">
<img class="about_icon" src="images/tastefusion_main_logo.png"/><br>
<img class="about_text" src="images/text_tastefusion_icon.png"/>
</div> 

</div>

</td>

<!--Third Layout-->
<td id="first_layout">  
<div class="layouts" style="height: fit-content; background-blend-mode: luminosity;background-image: url(images/imgi_right_photo-17082025.jpg);background-size: cover;">
<span class="cursor typewriter-animation"><b>Effortless Ordering Process</b><br>
Once you’ve browsed through our diverse menu, ordering your favorite food is a breeze! Simply add selected items to your cart, review your choices, and proceed to checkout. Our platform is designed to streamline this process, making it quicker and easier than ever to satisfy your cravings.<br>

<br><b>Secure Payment Facility</b><br>
At TasteFusion, we prioritize your security and convenience. Our <b>payment facility</b> is robust and reliable, allowing you to make hassle-free transactions. Choose from multiple payment methods that suit your preferences, ensuring a secure and smooth checkout experience every time.<br>

<br><b>Real-Time Delivery Tracking</b><br>
We understand how important it is for our users to stay informed about their orders. That’s why after placing your order, you can easily <b>track your food delivery status</b> in real-time. Receive updates on your order’s progress, from preparation to delivery, ensuring that you’re always in the loop.<br>

<br><b>Order History</b><br>
TasteFusion also keeps a comprehensive <b>order history</b> for you. Easily revisit your favorite meals and reorder with just a click! This feature not only enhances your experience but also makes meal planning effortless, saving you time when hunger strikes.<br>

<br>At TasteFusion, we are dedicated to redefining the way you experience food ordering. Whether you’re at home, at work, or anywhere in between, we’re here to ensure your dining experiences are nothing short of exceptional. Join us on this delicious journey and explore the vibrant world of food that awaits you with TasteFusion. Happy ordering!
</span>
</div>      
</td>

  </tr>
</table>

</body>
<style>  
.about_center-grid {
  cursor: alias;
  text-align: center;
  border-radius: 50px;
  background-color: #f0f0f0c4;
  padding: 10px;
  border: 0px;

  opacity: 1;
	animation-name: fadeInOpacity;
	animation-iteration-count: 1;
	animation-timing-function: ease-in;
	animation-duration: 0.5s;
}
.about_icon {
  filter: drop-shadow(2px 4px 6px #000000c1);
  width: auto;
  height: 270px;

  opacity: 1;
	animation-name: fadeInOpacity;
	animation-iteration-count: 1;
	animation-timing-function: ease-in;
	animation-duration: 2s;
  animation-delay: 0s;
}
.about_text {
  filter: invert(1);
  width: 80%;
  height: fit-content;
  margin-bottom: 20px;
}

.blure_layout {
  position: absolute;top: 50%;left: 50%;transform: translate(-50%, -50%);background: #f9f9f978; padding: 20px; border-radius: 12px;
  &:before {
    filter: blur(30px);
  }
}  

.layout_table {
  font-size: 12px;
  margin-top: 90px; 
  width:100%; 
  height: 100vh; 
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}

.layouts {
	width:-webkit-fill-available; 
	height: 100vh; 
	border-radius: 12px; 
	color: white; 
	padding: 10px; 
	margin: 10px;
}

.typewriter-animation {
  color: white;
  text-shadow: 4px 1px 6px black;
  opacity: 1;
	animation-name: fadeInOpacity;
	animation-iteration-count: 1;
	animation-timing-function: ease-in;
  animation-fill-mode: backwards;
	animation-duration: 2s;
  animation-delay: 6s;
}

#first_layout{
	animation-name: slideUp;
	animation-iteration-count: 1;
	animation-timing-function: ease-in;
  animation-fill-mode: backwards;
	animation-duration: 1s;
  animation-delay: 4s;   /* Delay before the animation starts */
  }

@keyframes slideUp {
  from {
    height: 0;
    opacity: 0;
  }
  to {
    height: auto; /* Or a specific height like 100px */
    opacity: 1;
  }
}

@keyframes fadeInOpacity {
	0% {
		opacity: 0;
	}
	100% {
		opacity: 1;
	}
}

</style>  

</html>
