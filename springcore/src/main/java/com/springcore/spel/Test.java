package com.springcore.spel;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.expression.Expression;
import org.springframework.expression.spel.standard.SpelExpressionParser;

public class Test {
	public static void main(String[] args) {
		
		ApplicationContext context = new ClassPathXmlApplicationContext("com/springcore/spel/spelconfig.xml");
		Demo d1 = context.getBean("demo",Demo.class);
		System.out.println(d1);
		
		// many ways to work with spel 
		
		SpelExpressionParser temp = new SpelExpressionParser();
		Expression expression = temp.parseExpression("9+9");
		System.out.println("this is expersion language in main method:-"+(expression.getValue()));
		
	}

}
 