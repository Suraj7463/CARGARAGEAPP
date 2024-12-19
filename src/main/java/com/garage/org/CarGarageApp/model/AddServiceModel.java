package com.garage.org.CarGarageApp.model;

public class AddServiceModel {
	private int id;
	private String brand_name;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	private String model_name;
	private String service_name;
	private int service_price;
	public String getBrand_name() {
		return brand_name;
	}
	public void setBrand_name(String brand_name) {
		this.brand_name = brand_name;
	}
	public String getModel_name() {
		return model_name;
	}
	public void setModel_name(String model_name) {
		this.model_name = model_name;
	}
	public String getService_name() {
		return service_name;
	}
	public void setService_name(String service_name) {
		this.service_name = service_name;
	}
	public int getService_price() {
		return service_price;
	}
	public void setService_price(int service_price) {
		this.service_price = service_price;
	}

}
