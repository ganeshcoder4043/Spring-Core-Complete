package com.springcore.spel;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component("demo")
public class Demo {
	@Value("#{1+3}")
	private int x;
	
	@Value("#{2+5}")
	private int y;
	
	@Value("#{ T(java.lang.Math).sqrt(144) }")   // static method 
	private double z;
	
	@Value("#{ T(java.lang.Math).E }")   // static variable
	private double e;
	
	@Value("#{new java.lang.String(' ganesh ')}")   // Object 
	private String name;
	
	@Value("#{5>1}")
	private boolean isActive;
	
	public int getX() {
		return x;
	}
	public void setX(int x) {
		this.x = x;
	}
	public int getY() {
		return y;
	}
	public void setY(int y) {
		this.y = y;
	}
	public double getZ() {
		return z;
	}
	public void setZ(double z) {
		this.z = z;
	}
	public double getE() {
		return e;
	}
	public void setE(double e) {
		this.e = e;
	}
	public Demo() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Demo [x=" + x + ", y=" + y + ", z=" + z + ", e=" + e + ", name=" + name + ", isActive=" + isActive
				+ "]";
	}
	
	
	
	
	
	
	
	
	
	

}
