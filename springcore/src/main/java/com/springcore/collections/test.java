package com.springcore.collections;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class test {
	
	public static void main(String[] args) {
		
		ApplicationContext context =new  ClassPathXmlApplicationContext("com/springcore/collections/collectionconfig.xml");
		Emp emp1 =(Emp) context.getBean("Emp1");
		System.out.println(emp1);
		
		// indivisual print
		System.out.println();
		System.out.println(emp1.getName());
		System.out.println(emp1.getPhones());
		System.out.println(emp1.getAddress());
		System.out.println(emp1.getCourses());
		System.out.println(emp1.getProps());
		
	}

}
