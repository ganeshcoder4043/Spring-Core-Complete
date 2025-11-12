package com.spring.jdbc;

import java.util.List;
import java.util.Scanner;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

import com.spring.jdbc.dao.StudentDao;
import com.spring.jdbc.entities.Student;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        System.out.println( "My JDBC Server run........" );
        
//        ApplicationContext context = new ClassPathXmlApplicationContext("com/spring/jdbc/config.xml");
        ApplicationContext context = new AnnotationConfigApplicationContext(JdbcConfig.class);
        StudentDao studentDao = context.getBean("studentDaoImpl",StudentDao.class);
        
//        Student student = new Student();
//        student.setId(534);
//        student.setName("gojo");
//        student.setCity("yamata");
//        int result = studentDao.insert(student);
//        System.out.println("number of data inserted in database...."+result);
        
       
//        Student student = new Student();
//        student.setId(69999);
//        student.setName("ganeshapiro");
//        student.setCity("gygeropool");
//        int change = studentDao.change(student);
//        System.out.println("data updated in database->....."+change);
        
        
//        System.out.println("Enter studentId you want to delete");
//        Scanner sc = new Scanner(System.in);
//        int value = sc.nextInt();
//        int delete = studentDao.delete(value);
//        System.out.println("Successfully Deleted of StudentId is"+value);
//        System.out.println("delete data from database"+delete);
        
//        Student result = studentDao.getStudent(121);
//        System.out.println(result);
        
        
        	  List<Student> allStudent = studentDao.getAllStudent();
        	  for(Student s:allStudent)
        	  {
        		  System.out.println(s);
        	  }
        
        
    }
}
