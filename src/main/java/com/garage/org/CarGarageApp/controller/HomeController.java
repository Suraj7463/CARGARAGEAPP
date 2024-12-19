package com.garage.org.CarGarageApp.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.garage.org.CarGarageApp.model.AddServiceModel;
import com.garage.org.CarGarageApp.model.Appointment;
import com.garage.org.CarGarageApp.model.CarSubModel;
import com.garage.org.CarGarageApp.model.CheckLogin;
import com.garage.org.CarGarageApp.model.CustLoginModel;
import com.garage.org.CarGarageApp.model.ImgModel;
import com.garage.org.CarGarageApp.model.SignUpModel;
import com.garage.org.CarGarageApp.service.SingUpService;

@Controller
public class HomeController {
@Autowired
SingUpService signUpService;
	@RequestMapping(value="/")
	public ModelAndView test(HttpServletResponse response,Map map) throws IOException{
		List<ImgModel> list=signUpService.getImageName();
		List<AddServiceModel> list1=signUpService.getServiceRecord();
		for(AddServiceModel m:list1)
		{
			System.out.println(m.getBrand_name());
		}
		map.put("record", list1);
		System.out.println(list.get(1));
		map.put("img", list);
		
		return new ModelAndView("home");
	}
	
	@RequestMapping(value="/cust_login",method=RequestMethod.GET)
	public String logRecord() {
		return "cust_login";
	}
	@RequestMapping(value="/home",method=RequestMethod.GET)
	public String regRecord() {
		return "home";
	}
	@RequestMapping(value="/validate",method=RequestMethod.POST)
		public String showDashboard(SignUpModel model,@RequestParam("cemail") String uname,@RequestParam("ccontact") String pwd,Map map)
		{
           List<CheckLogin>list=signUpService.isCheckLoginData();
		
		for (CheckLogin loginModel : list) {
	        if (loginModel.getCemail().equals(uname) && loginModel.getCcontact().equals(pwd)) {
	        	map.put("msg", "your Already Have Account Please Login");
	            return "cust_login"; // Login successful, redirect to dashboard
	        }
	 
	    }
		boolean b=signUpService.isAddData(model);
	    if(b){
	    	return "home";
	    }
	    else {
	    	map.put("msg","invalid input");
		
		     	
		    }
		    return "signup";
			
		}
	@RequestMapping(value="/log",method=RequestMethod.GET)
	public String loginData(CustLoginModel model ,@RequestParam("cusername") String uname,@RequestParam("cpassword") String pwd,Map map)
	{
		
		System.out.println(model.getCusername());
		if(model.getCusername().equals("admin") && model.getCpassword().equals("admin123"))
		{
			return "admin_dashboard";
		}
		
		List<CustLoginModel>list=signUpService.isLoginData();
		for (CustLoginModel loginModel : list) {
			System.out.println(loginModel.getCpassword());
	        if (loginModel.getCusername().equals(uname) && loginModel.getCpassword().equals(pwd)) {
	
	            return "home"; // Login successful, redirect to dashboard
	        }
	 
	    }
	    // If no match was found, return to the home page with an error message
		
	    map.put("msg", "Your Account Does Not Exist");
	    return "home";
	    
	    
	}
	@RequestMapping(value="/dashboard",method=RequestMethod.GET)
	public String showDashboard() {
		return "home";
	}
	@RequestMapping(value="/subservice",method=RequestMethod.GET)
	public String subservices()
	{
		return "subservice";
	}
	@RequestMapping(value="/fullyservice",method=RequestMethod.GET)
	public String fullyser()
	{
		return "fullyservice";
	}
	@RequestMapping(value="/cust_detail",method=RequestMethod.POST)
	public String addcustdata(CarSubModel model,Map map)
{
		boolean b=signUpService.isAddCustData(model);
		if(b)
		{
			return "dashboard";
		}
		else
		{
			return "subser";
		}
	}
	
	@RequestMapping(value="/ShowData",method=RequestMethod.GET)
	public String ShowRecord(Map map)
	{
		List<AddServiceModel> list=signUpService.getServiceRecord();
//		for(AddServiceModel m:list)
//		{
//			System.out.println(m.getBrand_name());
//		}
		map.put("record", list);
		
		return "showdata";
	}
	@RequestMapping(value="/del",method=RequestMethod.GET)
	public String DeleteRecord(@RequestParam("id") Integer id,Map map)
	{
		boolean b=signUpService.getDeleteRecord(id);
		List<AddServiceModel> list=signUpService.getServiceRecord();
		map.put("record", list);
		if(b)
		{
			map.put("msg", "Service Deleted Successfully...!");
			return "showdata";
		}
		return "showdata";
		

	}
	@RequestMapping(value="/add_service",method=RequestMethod.GET)
	public String getAddService()
	{
		return "add_service";
	}
	@RequestMapping(value="/add_data",method=RequestMethod.GET)
	public String getAddServiceData(AddServiceModel model,Map map)
	{
		boolean b=signUpService.isAddServiceData(model);
		List<AddServiceModel> list=signUpService.getServiceRecord();
		map.put("record", list);
		if(b)
		{
			map.put("msg", "Data Added Successfully....!");
			return "showdata";
		}
		return "admin_dashboard";
	}
	@RequestMapping(value="/book",method=RequestMethod.GET)
	public String showBookForm() {
		return "appointment";
	}
	@RequestMapping(value="/appointment",method=RequestMethod.GET)
	public String addAppointmentData(Appointment model,Map map)
	{
		boolean b=signUpService.addAppointmentData(model);
		if(b)
		{
			return "home";
		}
		return "home";
	}
	@RequestMapping(value="/upd",method=RequestMethod.GET)
	public String getUpdate()
	{
		return "update_service";
	}
	
	@RequestMapping(value="/update_service",method=RequestMethod.GET)
	public String getUpdateService(AddServiceModel model,Map map) {
		boolean b=signUpService.getUpdateService(model);
		List<AddServiceModel> list=signUpService.getServiceRecord();
		map.put("record", list);
		if(b)
		{
			return "showdata";
		}
		return "admin_dashboard";
	}
	@RequestMapping(value="/clientservice" ,method=RequestMethod.GET)
	public String getClientSer(Map map) {
		List<CarSubModel> list=signUpService.getClientSerRecord();
		map.put("clientrec", list);
	    return "clientrecord";
	}
	@RequestMapping(value="/serdel",method=RequestMethod.GET)
	public String delClientService(@RequestParam("vehicalno") String vno,Map map)
	{
		boolean b=signUpService.delClientData(vno);
		List<CarSubModel> list=signUpService.getClientSerRecord();
		map.put("clientrec", list);
		if(b)
		{
			return "clientrecord";
		}
		return "clientrecord";
	}
	@RequestMapping(value="/signup",method=RequestMethod.GET)
	public String isSignUp() {
		return "signup";
	}
	@RequestMapping(value="/servicedata",method=RequestMethod.GET)
	public String ShowSerRecord(Map map)
	{
		List<AddServiceModel> list=signUpService.getServiceRecord();
//		for(AddServiceModel m:list)
//		{
//			System.out.println(m.getBrand_name());
//		}
		map.put("record", list);
		
		return "home";
	}
	@RequestMapping(value="/upload",method=RequestMethod.GET)
	public String uploadfile()
	{
		return "imgupload";
	}
	@RequestMapping(value="/uploadimg",method=RequestMethod.POST)
	public String fileUpload(@RequestParam("img")CommonsMultipartFile file,HttpSession s,Model m,ImgModel model) {
		System.out.println(file.getName());
		System.out.println(file.getOriginalFilename());
		System.out.println(file.getContentType());
		System.out.println(file.getSize());
		
		byte[] bytes=file.getBytes();
		String path=s.getServletContext().getRealPath("/")+"resources"+File.separator+"images"+File.separator+file.getOriginalFilename();
		System.out.println(path);
		try {
			FileOutputStream fos=new FileOutputStream(path);
			fos.write(bytes);
			fos.close();
			System.out.println(model.getName());
			
			System.out.println("File Uploaded Successfully......!");
		}
		catch(Exception e)
		{
			e.printStackTrace();
			System.out.println("file not uploaded");
			
		}
		boolean b= signUpService.isAddImgName(model);
		m.addAttribute("imgname",file.getOriginalFilename());
		return "file_succes";
	}
	
	
}
