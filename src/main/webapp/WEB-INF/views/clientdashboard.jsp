<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
  *{
    padding: 0px;
    margin: 0px;
    box-sizing: border-box;
  }
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}
.nav{
  margin-top: 10px;
  display: flex;
}
.navbar { 
 
  width: 95%;
  float: right;
  overflow: hidden;
  background-color: #333; 
 
}
.navbar #spa{
  margin-right: 20%;
}
.item a.sub-btn #spa{
  margin-right: 10%;
}

.navbar a {
  float: right;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  
}

.subnav {
  float: right;
  overflow: hidden;
}

.subnav .subnavbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .subnav:hover .subnavbtn {
  background-color: red;
}

.subnav-content {
  display: none;
  position: absolute;
  left: 0;
  background-color: red;
  width: 100%;
  z-index: 1;
}

.subnav-content a {
  float: left;
  color: white;
  text-decoration: none;
}

.subnav-content a:hover {
  background-color:black;
  color: black;
}

.subnav:hover .subnav-content {
  display: block;
}
.main{
 
  display: flex;
  margin-top: 3%;
}
.main1{
  width: 50%;
  height: 100vh;
}
.sllider{
  width: 50%;
  height: 100vh;
  
}




.item {
    position: relative;
    cursor: pointer;
}

.item a.sub-btn {
    color:#fff;
    font-size: 20px;
    text-decoration: none;
    display: block;
    padding: 14px 16px;
    padding: 0px;
    line-height: 40px;
    float: right;
    margin-right: 40px;
    height: 40px;
}

.item .sub-menu {
    display: none;
    position: absolute;
    left: 0px;
    top: 100%;
    margin-top: 35px;
    background: #262627;
    padding: 0;
    list-style: none;
    width: 100%; /* Adjust width as needed */
    z-index: 1;
}

.item .sub-item {
    padding: 10px;
    color: white;
    text-decoration: none;
    display: block;
    width: 100%;
}

.item .sub-item:hover {
    background-color: #444;
}

.item:hover .sub-menu {
    display: block;
}


* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 100%;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}
.logo{
  width: 8%;
  height: 8%;
  
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  animation-name: fade;
  animation-duration: 1.5s;
}
img{
  width: 100%;
  height: 100%;
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}


</style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script>
    $(document).ready(function(){
      $('.sub-btn').click(function(){
                $(this).next('.sub-menu').slideToggle();
                $(this).find('.dropdown').toggleClass('rotate');
            });
        });

</script>
</head>
<body>
  <div class="nav">
  <div class="logo">
    <img alt="my image" style="width: 70px; height: 70px;" src="car.png" />
  <h4 style="color: red;">Car Fixers</h4>
  </div>
  
<div class="navbar" style="margin-bottom: 20px;">
  
  <a href="#home" id="spa">Home</a>
  <a href="#contact" >contact</a>
  <a href="">career</a>

  <div class="subnav">
    <button class="subnavbtn">About <i class="fa fa-caret-down"></i></button>
    <div class="subnav-content">
      <a href="#company">Company</a>
      <a href="#team">Team</a>
      <a href="#careers">Careers</a>
    </div>
  </div> 
  <div class="subnav">
    <button class="subnavbtn">Services <i class="fa fa-caret-down"></i></button>
    <div class="subnav-content">
      <div class="item">
        <a class="sub-btn" id="spa">Bikes
        </a>
        <div class="sub-menu">
          
            <a href="" class="sub-item">Full Service</a>
            <a href="" class="sub-item">Sub Services</a>
            <a href="" class="sub-item">Sub Item 03</a>  
        </div>
    </div>

    <div class="item">
      <a class="sub-btn">Cars</a>
      <div class="sub-menu">
        
          <a href="" class="sub-item">Full Service</a>
          <a href="" class="sub-item">Sub Services</a>
          <a href="" class="sub-item">Sub Item 03</a>  
      </div>
  </div>
      <div class="item">
        <a class="sub-btn">Auto
        </a>
        <div class="sub-menu">
          
            <a href="" class="sub-item">Cleaning</a>
            <a href="" class="sub-item">Oil Changin</a>
            <a href="" class="sub-item">tyer & Wheel Chainging</a>  
        </div>
    </div>



      <div class="item">
        <a class="sub-btn">Buses
        </a>
        <div class="sub-menu">
          
            <a href="" class="sub-item">Full Service</a>
            <a href="" class="sub-item">Sub Services</a>
            <a href="" class="sub-item">Sub Item 03</a>  
        </div>
    </div>

    </div>
  </div> 
  
  
</div>
</div>
<div class="main" style="width: 100%; height: 100%;">
<div style="padding:5%; font-size: 40px" class="main1">
  <h1 style="font-style: italic;">Best Car Repair & Maintenance
    </h1>
  <p style="font-size: 20px;">One-Click away Services Are Here!<br>
    Get better savings plus trusted car repair mechanics.</p>
</div>
<div class="sllider">
    
   

    <div class="slideshow-container">

      <div class="mySlides fade">
        <div class="numbertext">1 / 3</div>
        <img src="car4.jpg ">
        <div class="text">Caption Text</div>
      </div>
      
      <div class="mySlides fade">
        <div class="numbertext">2 / 3</div>
        <img src="car3.jpg">
        <div class="text">Caption Two</div>
      </div>
      
      <div class="mySlides fade">
        <div class="numbertext">3 / 3</div>
        <img src="car5.jpg">
        <div class="text">Caption Three</div>
      </div>
      <div class="mySlides fade">
        <div class="numbertext">3 / 4</div>
        <img src="car_rep.png">
        <div class="text">Caption Three</div>
      </div>
      
      </div>
      <br>
      
      <div style="text-align:center">
        <span class="dot"></span> 
        <span class="dot"></span> 
        <span class="dot"></span> 
      </div>
</div>
</div>
<script>
  let slideIndex = 0;
  showSlides();
  
  function showSlides() {
    let i;
    let slides = document.getElementsByClassName("mySlides");
    let dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}    
    for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 2000); // Change image every 2 seconds
  }
  </script>
</body>
</html>