package com.springcore.stereotype;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test {
	public static void main(String[] args) {
		
		ApplicationContext context = new ClassPathXmlApplicationContext("com/springcore/stereotype/stereoconfig.xml");
		Student student1 = context.getBean("student",Student.class);
		System.out.println(student1);
		
		System.out.println("---------------------------------------------------");
		System.out.println(student1.getCity());
		
		System.out.println("----bean scope----");
		
		Student student2 = context.getBean("student",Student.class);
		System.out.println("student1 "+student2.hashCode());
		System.out.println("student2 "+student1.hashCode());
	}

}
