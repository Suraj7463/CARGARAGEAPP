<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="<c:url value="/resources/style3.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/subser.js"/>">
<title>Insert title here</title>
<script type="text/javascript">
        function carfun(){
            var caroil=document.f1.carsi.value;
            var vehical=document.f1.tr.value;
            if(caroil=="Conventional Oil" && vehical=="FourWheeler")
        {
            document.f1.oilp.value=500;
        }else if(caroil=="Conventional Oil" && vehical=="TwoWheeler")
        {
            document.f1.oilp.value=200;
        }
        else if(caroil=="Select Oil Type")
        {
            document.f1.oilp.value=0;
        }

        else if(caroil=="Synthetic Blend Oil" && vehical=="FourWheeler")
        {
            document.f1.oilp.value=600;
        }
        else if(caroil=="Synthetic Blend Oil" && vehical=="TwoWheeler")
        {
            document.f1.oilp.value=300;
        }
        else if(caroil=="Full Synthetic Oil" && vehical=="FourWheeler")
        {
            document.f1.oilp.value=700;
        }else if(caroil=="Full Synthetic Oil" && vehical=="TwoWheeler")
        {
            document.f1.oilp.value=350;
        }
        else if(caroil=="High-Mileage Oil" && vehical=="FourWheeler")
        {
            document.f1.oilp.value=800;
        }
        else if(caroil=="High-Mileage Oil" && vehical=="TwoWheeler")
        {
            document.f1.oilp.value=400;
        }
        else{
            document.f1.oilp.value=0;
        }
        var w=parseInt(document.f1.wheelpri.value);
        var i=parseInt(document.f1.oilp.value);
        var wash=parseInt(document.f1.carclepri.value);

        document.f1.fb.value=w+i+wash;

            var vehical=document.f1.tr.value;
            var clepri= document.f1.carcle.value;
            if(clepri=="Select Cleaning Type" )
        {
            document.f1.carclepri.value=0;
        }
        else  if(clepri=="Premium Top Wash" && vehical=="FourWheeler")
        {
            document.f1.carclepri.value=900;
        }
        else  if(clepri=="Premium Top Wash" && vehical=="TwoWheeler")
        {
            document.f1.carclepri.value=450;
        }
        else if(clepri=="Car Interior Spa" && vehical=="FourWheeler")
        {
            document.f1.carclepri.value=1200;
        }
        else if(clepri=="Car Interior Spa" && vehical=="TwoWheeler")
        {
            document.f1.carclepri.value=600;
        }
        else if(clepri=="Deep All Round Spa" && vehical=="FourWheeler" )
        {
            document.f1.carclepri.value=1500;
        }
        else if(clepri=="Deep All Round Spa" && vehical=="TwoWheeler" )
        {
            document.f1.carclepri.value=750;
        }
        else if(clepri=="Car Wash & Wax" && vehical=="FourWheeler" )
        {
            document.f1.carclepri.value=1700;
        }
        else if(clepri=="Car Wash & Wax" && vehical=="TwoWheeler" )
        {
            document.f1.carclepri.value=800;
        }
        else{
            document.f1.carclepri.value=0;
        }
        var w=parseInt(document.f1.wheelpri.value);
        var i=parseInt(document.f1.oilp.value);
        var wash=parseInt(document.f1.carclepri.value);

        document.f1.fb.value=w+i+wash;

        
        
            var vehical=document.f1.tr.value;
            var wheel=document.f1.wheeltyp.value;
            if(wheel=="Apollo Alnac 4GS" && vehical=="FourWheeler")
        {
            
           
            var qt=parseInt(document.f1.qty.value);
            var val=4000*qt;
            document.f1.wheelpri.value=val;
            
        }
        else if(wheel=="Apollo Alnac 4GS" && vehical=="TwoWheeler")
        {
            
           
            var qt=parseInt(document.f1.qty.value);
            var val=700*qt;
            document.f1.wheelpri.value=val;
            
        }
        else if(wheel=="MRF ZV2K" && vehical=="FourWheeler" )
        {
            
           
            var qt=parseInt(document.f1.qty.value);
            var val=5000*qt;
            document.f1.wheelpri.value=val;
            
        }
        else if(wheel=="MRF ZV2K" && vehical=="TwoWheeler" )
        {
            var qt=parseInt(document.f1.qty.value);
            var val=800*qt;
            document.f1.wheelpri.value=val;
            
        }
        else if(wheel=="JK UX Royale" && vehical=="FourWheeler" )
        {
            
           
            var qt=parseInt(document.f1.qty.value);
            var val=8000*qt;
            document.f1.wheelpri.value=val;
            
        }else if(wheel=="JK UX Royale" && vehical=="TwoWheeler" )
        {
            
           
            var qt=parseInt(document.f1.qty.value);
            var val=900*qt;
            document.f1.wheelpri.value=val;
            
        }
        else if(wheel=="Select Wheels Type" )
        {
            
            document.f1.wheelpri.value=0;
            
        }
        var w=parseInt(document.f1.wheelpri.value);
        var i=parseInt(document.f1.oilp.value);
        var wash=parseInt(document.f1.carclepri.value);

        document.f1.fb.value=w+i+wash;
        
        
        }


        function showdate() {
            d = new Date()
            dd = d.getDate()
            yy = d.getFullYear()
            var Arraymonth = ['JAN', 'FEB', 'MAR', 'APR', 'MAY', 'JUN', 'JUL', 'AUG', 'SEP', 'ACTO', 'NOV', 'DEC'];
            mm = Arraymonth[d.getMonth()];
            var cdate = dd + "/" + mm + "/" + yy;
            document.f1.dt.value = cdate;
            var timejs = d.toLocaleTimeString()
            document.f1.tm.value = timejs;

        }
    </script>

</head>
<body onload="showdate()" bgcolor="yellow">
<button style="padding: 5px; cursor: pointer;"><a href="/CarGarageApp/" style="text-decoration: none;">Go Dashboard</a></button>
    <center>
        <form name="f1" action="cust_detail" method="post">
            <table cellpadding="7" align="center" border="1">
                <tr>
                    <td colspan="2" align="center">
                        <h2>Garage Services</h2>
                    </td>
                </tr>
                <tr>
                    <td>CUSTOMER NAME</td>
                    <td><input type="text" name="cname" class="put"></td>
                </tr>

                
                <tr>
                    <td>Vehical No</td>
                    <td><input type="text" name="vehicalno" value="" class="put"></td>
                </tr>
                

                <tr>
                    <td>Vehical</td>
                    <td>
                        <input type="radio" name="tr" value="TwoWheeler" onclick="carfun();">TwoWheeler
                        <input type="radio" name="tr" value="FourWheeler" onclick="carfun();">FourWheeler

                    </td>
                </tr>
                <tr>
                    <td for="cars">Choose a Car name:</td>

                          <td> <select name="cars" id="cars">
                            <option value="null" hidden>Select car name</option>
                            <option value="volvo">Volvo</option>
                            <option value="saab">Saab</option>
                            <option value="mercedes">Mercedes</option>
                            <option value="audi">Audi</option>
                            </select>
                        </td>
                </tr>

                <tr>
                    <td for="cars">Choose a Bike name:</td>

                          <td> <select name="bikes" id="cars">
                           <option value="null" hidden>Select Bike name</option>
                            <option value="volvo">splender</option>
                            <option value="saab">ktm</option>
                            <option value="mercedes">Apache Rtr</option>
                            <option value="audi">Activa</option>
                            </select>
                        </td>
                </tr>
                <tr><td colspan="2" style="text-align: center;">Services</td></tr>
                <tr>
                    <td>Oil Change:</td>

                          <td> <select name="carsi" id="cars">
                            
                            <option value="Conventional Oil" onclick="carfun()">Conventional Oil</option>
                            <option value="Synthetic Blend Oil" onclick="carfun()">Synthetic Blend Oil</option>
                            <option value="Full Synthetic Oil" onclick="carfun()">Full Synthetic Oil</option>
                            <option value="High-Mileage Oil" onclick="carfun()">High-Mileage Oil</option>
                            </select>
                        </td>
                </tr>
                <tr>
                    <td>Oil price</td>
                    <td><input type="text" name="oilp" value="0" onclick="carfun()" class="put"></td>
                </tr>

                <tr>
                    <td for="cars">Car Cleaning:</td>

                          <td> <select name="carcle" id="cars">
                            
                            <option value="Premium Top Wash" onclick="carfun()">Premium Top Wash</option>
                            <option value="Car Interior Spa" onclick="carfun()">Car Interior Spa</option>
                            <option value="Deep All Round Spa" onclick="carfun()">Deep All Round Spa</option>
                            <option value="Car Wash & Wax" onclick="carfun()">Car Wash & Wax</option>
                            </select>
                        </td>
                </tr>
                <tr>
                    <td>Cleaning price</td>
                    <td><input type="text" name="carclepri" value="0" onclick="carfun()" class="put"></td>
                </tr>

                <tr>
                    <td for="cars">Tyers & Wheel Change:</td>

                          <td> <select name="wheeltyp" id="cars">
                            
                            <option value="Apollo Alnac 4GS" onclick="carfun()">Apollo Alnac 4GS</option>
                            <option value="MRF ZV2K" onclick="carfun()">MRF ZV2K</option>
                            <option value="JK UX Royale" onclick="carfun()">JK UX Royale</option>
                            <option value="Audi">Audi</option>
                            </select>
                        </td>
                </tr>
                <tr>
                    <td>Quantity of Wheels</td>
                    <td><input type="number" name="qty" value="0" onkeyup="carfun()" class="put"></td>
                </tr>
                <tr>
                    <td>Wheel price</td>
                    <td><input type="text" name="wheelpri" value="0" onclick="carfun()" class="put"></td>
                </tr>
                <tr>
                    <td>Final bill</td>
                    <td><input type="text" value="0" name="fb" class="put"></td>
                </tr>
                <tr>
                    <td>date</td>
                    <td><input type="text" name="dt" class="put"></td>
                </tr>
                <tr>
                    <td>time</td>
                    <td><input type="text" name="tm" class="put"></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="submit" class="buttonclass">
                        <input type="button" value="print" onclick="print()" class="buttonclass">
                    </td>
                </tr>



            </table>
        </form>
    </center>

</body>

    </html>