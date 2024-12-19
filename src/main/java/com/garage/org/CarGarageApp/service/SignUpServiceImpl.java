package com.garage.org.CarGarageApp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.garage.org.CarGarageApp.model.AddServiceModel;
import com.garage.org.CarGarageApp.model.Appointment;
import com.garage.org.CarGarageApp.model.CarSubModel;
import com.garage.org.CarGarageApp.model.CheckLogin;
import com.garage.org.CarGarageApp.model.CustLoginModel;
import com.garage.org.CarGarageApp.model.ImgModel;
import com.garage.org.CarGarageApp.model.SignUpModel;
import com.garage.org.CarGarageApp.repository.SignUpRepository;

@Service("signUpService")
public class SignUpServiceImpl implements SingUpService {
	@Autowired
	SignUpRepository singUpRepo;

	@Override
	public boolean isAddData(SignUpModel model) {
	
		return singUpRepo.isAddData(model);
	}


	@Override
	public List<CustLoginModel> isLoginData() {
		List<CustLoginModel> list=singUpRepo.isLoginData();
		return list;
	}


	@Override
	public List<CheckLogin> isCheckLoginData() {
		// TODO Auto-generated method stub
		List<CheckLogin> list=singUpRepo.isCheckLoginData();
		return list;
	}


	@Override
	public boolean isAddCustData(CarSubModel model) {
		
		return singUpRepo.isAddCustData(model);
	}


	@Override
	public List<AddServiceModel> getServiceRecord() {
		List <AddServiceModel> list=singUpRepo.getServiceRecord();
		return list;
	}


	@Override
	public boolean getDeleteRecord(int id) {
		
		return singUpRepo.getDeleteRecord(id);
	}


	@Override
	public boolean isAddServiceData(AddServiceModel model) {
		
		return singUpRepo.isAddServiceData(model);
	}


	@Override
	public boolean getUpdateService(AddServiceModel model) {
		
		return singUpRepo.getUpdateService(model);
	}


	@Override
	public boolean isAddImgName(ImgModel model) {
		
		return singUpRepo.isAddImgName(model);
	}


	@Override
	public List<ImgModel> getImageName() {
		
		return singUpRepo.getImageName();
	}


	@Override
	public List<CarSubModel> getClientSerRecord() {
		
		return singUpRepo.getClientSerRecord();
	}


	@Override
	public boolean delClientData(String vno) {
		// TODO Auto-generated method stub
		return singUpRepo.delClientData(vno);
	}


	@Override
	public boolean addAppointmentData(Appointment model) {
		
		return singUpRepo.addAppointmentData(model);
	}

}
