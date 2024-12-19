<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<style>
input[type=text], select {
  width: 45%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
.main{
    margin-left: 25%;
    width: 50%;
    height: auto;
}
.cinp[type=text]{
    width: 90%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;

}
input[type=submit] {
  width: 90%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  /* background-color: #f2f2f2; */
  padding: 20px;
}
</style>
<body>

<h2 style="color: deepskyblue; text-align: center;">Book Car Service with Approved Garages</h2>

<div class="main">
  <form action="appointment" method="get">
    <label for="fname">First Name</label>    <label style="margin-left: 35%;" for="lname">Select Car Model</label><br>
    <input type="text" id="fname" name="name" placeholder="Your name..">
    <select id="country" name="model">
        <option value="null">Select Car Model</option>
        <option value="Suzuki Swift">Suzuki Swift</option>
        <option value="Audi Q5">Audi Q5</option>
      </select>
<br>
    <label for="service">Select Service</label><label style="margin-left: 35%;" for="subservice">Select SubService</label><br>
    <select id="country" name="service">
      <option value="null">Select Service</option>
      <option value="canada">Car Repair And Services </option>
      <option value="usa">Car Cleaning</option>
      <option value="usa">Car Battery Replacement</option>
    </select>
    <select id="country" name="subservice">
        <option value="null">Select Sub Services</option>
        <option value="canada">Cleaning</option>
        <option value="usa">Wheel Changing</option>
      </select>
      <br>
      <label for="service">Select Brand</label><label style="margin-left: 35%;" for="subservice">Select City</label><br>
      <select id="country" name="brand">
        <option value="null">Select Brands</option>
        <option value="HONDA">HONDA</option>
        <option value="TATA">TATA</option>
        <option value="KIA">KIA</option>
        <option value="TOYOTA">TOYOTA</option>

      </select>
      <select id="country" name="city">
          <option value="null">Select City</option>
          <option value="PUNE">PUNE</option>
          <option value="MUMBAI">MUMBAI</option>
          <option value="THANE">THANE</option>
          <option value="LATUR">LATUR</option>
        </select>
<br>
        <label for="fname">Contact Number</label><br>
        <input class="cinp" type="text" id="fname" name="contact" placeholder="Enter Your contact.">
        <br>
        <label for="fname">Enter Full Address</label><br>
        <input class="cinp" type="text" id="fname" name="address" placeholder="Please Type Your Full Address">

  
    <input class="cinp" type="submit" value="Submit">
  </form>
</div>

</body>
</html>


    