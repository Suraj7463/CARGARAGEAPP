<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<title>Insert title here</title>
<style>
.container{
margin-left:400px;
Background-color:gray;
</style>

</head>
<jsp:include page="admin_dashboard.jsp"></jsp:include><br><br>
<body>
<form name="f1" action="uploadimg" method="post" enctype="multipart/form-data">
  <div class="container" style="width: 60%; height: 100%;">
    
  <h3 style="text-align: center;" class="mt-5">Upload File</h3>
<div class="mb-3">
  <label for="formFile" class="form-label">Enter File Name</label>
  <input class="form-control" name="name" type="text" id="formFile">
</div>
<div class="mb-3">
  <label for="formFileMultiple" class="form-label">Upload File</label>
  <input class="form-control" name="img" type="file" id="formFileMultiple" multiple>
</div>
<button type="submit" class="btn btn-primary" style="margin-left: 200px;">Submit</button>
</div>
</form>
</body>
</html>