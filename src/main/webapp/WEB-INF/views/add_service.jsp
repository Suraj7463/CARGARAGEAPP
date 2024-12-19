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
<jsp:include page="admin_dashboard.jsp"></jsp:include><br><br>
<body>
<form action='add_data' method='get'>
  <div class="imgcontainer">
    <img src="<c:url value="/resources/images/car_rep.png"/>" alt="Avatar" class="avatar">
  </div>

  <div class="container1">
  <div class="container">
    <label for="uname"><b> Brand Name</b></label>
    <input type="text" placeholder="Enter Brand Name" name="brand_name" required>

    <label for="uname"><b>Model Name</b></label>
    <input type="text" placeholder="Enter Model Name" name="model_name" required>

    <label for="uname"><b>Serive Name</b></label>
    <input type="text" placeholder="Service Name" name="service_name" required>

    <label for="uname"><b>Price</b></label>
    <input type="text" placeholder="Enter Service Price" name="service_price" required>
    <button type="submit">Add Service</button>
    
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