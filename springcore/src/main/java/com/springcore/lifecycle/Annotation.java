package com.springcore.lifecycle;

import jakarta.annotation.PostConstruct;
import jakarta.annotation.PreDestroy;

public class Annotation {
	
	private String name;
	
	
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	

	@Override
	public String toString() {
		return "Annotation [name=" + name + "]";
	}

	public Annotation() {
		super();
		// TODO Auto-generated constructor stub
	}

	@PostConstruct
	public void start() {
		System.out.println("this is annotation init method");
	}
	
	@PreDestroy
	public void end() {
		System.out.println("this is annotation destroy method");
	}

}
