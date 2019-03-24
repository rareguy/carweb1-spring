package com.rifqi.springmvctugas;

public class HatchbackCar implements Car {
	
	private String brand;
	private String type;

	public HatchbackCar() {
		
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
		System.out.println("75 litre");

	}

	@Override
	public String toString() {
		return "HatchbackCar [brand=" + brand + ", type=" + type + "]";
	}
	
}
