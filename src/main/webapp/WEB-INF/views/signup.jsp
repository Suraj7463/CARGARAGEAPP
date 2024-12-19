<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="<c:url value="/resources/style.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/validate.js"/>">
<title>Insert title here</title>
</head>
<body>
<h2 style="color:green">${msg}</h2>
<form action='validate' method='post'>
  <div class="imgcontainer">
  
  <img src="resources/ava.jpg" alt="Avatar" class="avatar">
    
  </div>

  <div class="container1">
  <div class="container">
    <label for="uname"><b>Name</b></label>
    <input type="text" placeholder="Enter Name" name="cname" required>

    <label for="uname"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="cemail" required>

    <label for="uname"><b>Contact</b></label>
    <input type="text" placeholder="Enter Contact" name="ccontact" required>

    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="cusername" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="cpassword" required>

    <button type="submit">Sign Up</button>
   
    <label>
    If You Have Already Registered?<a href="cust_login">Login</a>
    
       
    </label>
    </div>
    </div>
    
    </form>
    </body>
    </html>