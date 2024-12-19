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
  