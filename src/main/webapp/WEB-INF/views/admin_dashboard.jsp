<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet"  href="dashb.css">
    <link href="<c:url value="/resources/style2.css"/>" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Document</title>
    <style>
      
    </style>
</head>
<body>
    <div class="main">
      
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
                    <a href="ShowData" class="sub-item">View Service</a>
                    <a href="add_service" class="sub-item">Add Services</a>
                    <a href="upload" class="sub-item">Upload Image</a>
                   
                    
                </div>
            </div>
            <div class="item"><a href="clientservice"><i class="fas fa-th"></i>Report</a></div>
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

    </script>
</body>
</html>