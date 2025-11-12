package com.springcore.ci;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class test {

	public static void main(String[] args) {

		ApplicationContext context = new ClassPathXmlApplicationContext("com/springcore/ci/ciconfig.xml");
		Person person = (Person) context.getBean("person");
		Addition add = (Addition) context.getBean("add");
		
		System.out.println(person);
//		System.out.println(add);
		add.doSum();
		
		 
	}

}
