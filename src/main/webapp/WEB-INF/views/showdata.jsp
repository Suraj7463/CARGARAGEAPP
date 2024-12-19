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
<form action="showdata" method="get">
<table>

  <tr>
    <th>Brand Name</th>
    <th>Model Name</th>
    <th>Service Name</th>
    <th>Service Price</th>
    <th>Delete</th>
    <th>Update</th>

  </tr>
 
   <c:forEach var="s" items="${record}">
<tr>
<td>${s.getBrand_name()}</td>
<td>${s.getModel_name()}</td>
<td>${s.getService_name()}</td>
<td>${s.getService_price()}</td>
<td><a href="del?id=${s.getId()}">DELETE</a></td>
<td><a href="upd?id=${s.getId()}">UPDATE</a></td>
</tr>
</c:forEach>
</table>
${msg}
</form>

</body>
</html>