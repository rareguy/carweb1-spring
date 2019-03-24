package com.rifqi.springmvctugas;

public class SedanCar implements Car {

	private String brand;
	private String type;
	
	public SedanCar(String brand, String type) {
		this.brand = brand;
		this.type = type;
	}
	

	public SedanCar() {
		
	}

	@Override
	public String toString() {
		return "SedanCar [brand=" + brand + ", type=" + type + "]";
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Override
	public void getDailyFuelIntake() {
		System.out.print("120 litre");
	}

}
