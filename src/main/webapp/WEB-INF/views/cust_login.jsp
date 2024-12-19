<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="<c:url value="/resources/style.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/JS/validate.js"/>">
<title>Insert title here</title>
</head>
<body>
<h2 style="color:green">${msg}</h2>
<form action='log' method='GET'>
  <div class="imgcontainer">
    <img src="resources/ava.jpg" alt="Avatar" class="avatar">
  </div>

  <div class="container1">
  <div class="container">

    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="cusername" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="cpassword" required>

    <button type="submit">Login</button>
    <label>
       If You Don't Have Account?<a href="home">Register</a>
    </label>
    <!-- <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label> -->
  </div>

  <!-- <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn">Cancel</button>
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>-->
</div>

</form>
</body>
</html>