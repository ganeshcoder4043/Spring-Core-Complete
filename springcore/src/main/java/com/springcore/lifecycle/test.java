package com.springcore.lifecycle;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class test {
	
	public static void main(String[] args) {
		
			AbstractApplicationContext context = new ClassPathXmlApplicationContext("com/springcore/lifecycle/config.xml");
			Samosa samosa =(Samosa) context.getBean("s1");
			System.out.println(samosa);
			context.registerShutdownHook();
			
			System.out.println("__________________________________________________________________");
			
			Pepsi pepsi=(Pepsi) context.getBean("p1");
			System.out.println(pepsi);
			
			System.out.println("__________________________________________________________________");
			
			Annotation annotation = (Annotation) context.getBean("a1");
			System.out.println(annotation);
			
	}

}
