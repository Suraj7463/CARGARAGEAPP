package com.garage.org.CarGarageApp.service;

import java.util.List;

import com.garage.org.CarGarageApp.model.AddServiceModel;
import com.garage.org.CarGarageApp.model.Appointment;
import com.garage.org.CarGarageApp.model.CarSubModel;
import com.garage.org.CarGarageApp.model.CheckLogin;
import com.garage.org.CarGarageApp.model.CustLoginModel;
import com.garage.org.CarGarageApp.model.ImgModel;
import com.garage.org.CarGarageApp.model.SignUpModel;

public interface SingUpService {
	public boolean isAddData(SignUpModel model);
	
	public List<CustLoginModel> isLoginData();
	public List<CheckLogin>isCheckLoginData();
	public boolean isAddCustData(CarSubModel model);
	public List<AddServiceModel>getServiceRecord();
	public boolean getDeleteRecord(int id);
	public boolean isAddServiceData(AddServiceModel model);
	public boolean getUpdateService(AddServiceModel model);
	public boolean isAddImgName(ImgModel model);
	public List<ImgModel>getImageName();
	public List<CarSubModel>getClientSerRecord();
	public boolean delClientData(String vno);
	public boolean addAppointmentData(Appointment model);

}
