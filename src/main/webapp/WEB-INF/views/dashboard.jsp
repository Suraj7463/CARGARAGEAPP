<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link href="<c:url value="/resources/style2.css"/>" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Document</title>
</head>
<body>
    <div class="main">
        
    <div class="sllider">
        <h2 style="color: black; margin-left:180px" >Welcome To Our Car Fixers</h2>
       

<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="<c:url value="/resources/images/car4.jpg"/>" style="width:80%">
  <div class="text">Caption Text</div>
</div>
    </div>
    <div class="mySlides fade">
        <div class="numbertext">2 / 3</div>
        <img src="<c:url value="/resources/images/car3.jpg"/>" style="width:80%">
        <div class="text">Caption Two</div>
      </div>
      
      <div class="mySlides fade">
        <div class="numbertext">3 / 3</div>
        <img src="<c:url value="/resources/images/car5.jpg"/>" style="width:80%">
        <div class="text">Caption Three</div>
      </div>
      
      
      <br>
      
      <div style="text-align:center">
        <span class="dot"></span> 
        <span class="dot"></span> 
        <span class="dot"></span> 
      </div>
    </div>
    
    <!--menu button-->
    <div class="menu-btn">
        <i class="fas fa-bars"></i>
    </div>
    <div class="side-bar">
        <header>
            <div class="close-btn">
                <i class="fas fa-times"></i>
            </div>
            <img alt="my image" src="<c:url value="/resources/images/car.png" />">
            <h1>Car Fixers</h1>
        </header>
        <!--menu items-->
        <div class="menu">
            <div class="item"><a href="dashboard"><i class="fas fa-desktop"></i>Dashboard</a></div>
            <div class="item">
                <a class="sub-btn"><i class="fas fa-table"></i>Services
                    <i class="fas fa-angle-right dropdown"></i>
                </a>
                <div class="sub-menu">
                    <a href="fullyservice" class="sub-item">Full Service</a>
                    <a href="subservice" class="sub-item">Sub Services</a>
                    <a href="" class="sub-item">Sub Item 03</a>  
                </div>
            </div>
            <div class="item"><a href=""><i class="fas fa-th"></i>Forms</a></div>
            <div class="item">
                <a class="sub-btn"><i class="fas fa-cog"></i>Setting
                    <i class="fas fa-angle-right dropdown"></i>
                </a>
                <div class="sub-menu">
                    <a href="" class="sub-item">Sub Item 01</a>
                    <a href="" class="sub-item">Sub Item 02</a>
                    <a href="" class="sub-item">Sub Item 03</a>  
                </div>
            </div>
            <div class="item"><a href=""><i class="fas fa-info-circle"></i>About</a></div>
        </div>
    </div>
    </div>

    <!--jquery cdn link-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script>
        

        $(document).ready(function(){
            $('.menu-btn').click(function(){
                $('.side-bar').addClass('active');
                $('.menu-btn').css("visibility","hidden");
            });
            
            //for close btn
            $('.close-btn').click(function(){
                $('.side-bar').removeClass('active');
                $('.menu-btn').css("visibility","visible");
            });

            //jquery for toggle sub menus
            $('.sub-btn').click(function(){
                $(this).next('.sub-menu').slideToggle();
                $(this).find('.dropdown').toggleClass('rotate');
            });
        });


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