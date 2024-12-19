<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
*{
padding:0px;
margin:0px;


}


table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
    
    margin-top:50px;
   margin-left: 260px;
   
    background-color: gray;
    margin-right:40px
    
  }
  td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
  }
  
</style>
</head>
<jsp:include page="admin_dashboard.jsp"></jsp:include><br><br>
<body>
<form action="clientrecord" method="get">
<table>

  <tr>
    <th>Cust_Name</th>
    <th>Vec_No</th>
    <th>Vec_Type</th>
    <th>Vec_Name</th>
    <th>Vec_Name</th>
    <th>Oil_Change</th>
    <th>Oil_Price</th>
    <th>Car_Cleaning</th>
    <th>Cleaning_Pri</th>
    <th>Wheel_Type</th>
    <th>Wheel_Qty</th>
    <th>Wheel_Price</th>
    <th>Final_Bill</th>
    <th>Date</th>
    <th>Time</th>
    <th>Delete</th>
    <th>Update</th>

  </tr>
 
   <c:forEach var="s" items="${clientrec}">
<tr>
<td>${s.getCname()}</td>
		<td>${s.getVehicalno()}</td>
		<td>${s.getTr()}</td>
		<td>${s.getCars()}</td>
		<td>${s.getBikes()}</td>
		<td>${s.getCarsi()}</td>
		<td>${s.getOilp()}</td>
		<td>${s.getCarcle()}</td>
		<td>${s.getCarclepri()}</td>
		<td>${s.getWheeltyp()}</td>
		<td>${s.getQty()}</td>
		<td>${s.getWheelpri()}</td>
		<td>${s.getFb()}</td>
	<td>${s.getDt()}</td>
	 <td>${s.getTm()}</td>
	 <td><a href="serdel?vehicalno=${s.getVehicalno()}">DELETE</a></td>
<td><a href="">UPDATE</a></td>
</tr>
</c:forEach>
</table>
${msg}
</form>

</body>
</html>