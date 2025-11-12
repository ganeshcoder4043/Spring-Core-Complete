package com.spring.orm;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.List;
import java.util.Scanner;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.spring.orm.dao.StudentDao;
import com.spring.orm.entities.Student;

public class App 
{
    public static void main( String[] args )
    {
    		ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
    		StudentDao studentDao = context.getBean("studentDao",StudentDao.class);
    		
    		
    		
    		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
    		
    		System.out.println("----WELCOME TO SPRING ORM SMALL PROJECT----");
    		
    		boolean go = true;
    		while(go) {
    			System.out.println("PRESS 1 FOR ADD NEW STUDENT");
    			System.out.println("PRESS 2 FOR DISPLAY ALL STUDENT");
    			System.out.println("PRESS 3 FOR GET DETAILS GET STUDENT");
    			System.out.println("PRESS 4 FOR DELETE STUDENT");
    			System.out.println("PRESS 5 FOR UPDATE");
    			System.out.println("PRESS 6 EXIT");
    			
    			try {
					
					int input = Integer.parseInt(br.readLine());
					
					switch (input) {
					
					case 1:
						//ADD NEW STUDENT
						System.out.println("YOU CHOOSE OPTION 1");
						System.out.println("Enter student id");
						int uid = Integer.parseInt(br.readLine());
						System.out.println("Enter student name");
						String uname = br.readLine();
						System.out.println("Enter student city");
						String ucity = br.readLine();
						
//						Student student = new Student();
//						student.setStudentId(uid);
//						student.setStudentName(uname);
//						student.setStudentCity(ucity);
						
						Student student = new Student(uid,uname,ucity);
						int insert = studentDao.insert(student);
						System.out.println(insert);
						
						System.out.println("....................YOUR DATA SUCCESSFULLY INSERTED...........");
						break;
					
					case 2:
						//DISPLAY ALL STUDENT
						System.out.println("YOU CHOOSE OPTION 2");
						List<Student> allStudent = studentDao.getAllStudent();
						for(Student s:allStudent) {
							System.out.println("studentId-> "+s.getStudentId());
							System.out.println("studentName-> "+s.getStudentName());
							System.out.println("studentCity-> "+s.getStudentCity());
						}
						System.out.println("....................YOUR DATA SUCCESSFULLY FETECHED...........");
						break;
						
					case 3:
						//FOR GET DETAILS GET STUDENT
						System.out.println("YOU CHOOSE OPTION 3");
						System.out.println("Enter student id");
						int usid = Integer.parseInt(br.readLine());
						Student s = studentDao.getStudent(usid);
						System.out.println("studentId-> "+s.getStudentId());
						System.out.println("studentName-> "+s.getStudentName());
						System.out.println("studentCity-> "+s.getStudentCity());
						
						System.out.println("....................YOUR DATA SUCCESSFULLY PRINTED...........");
						break;
						
					case 4:
						//FOR DELETE STUDENT
						System.out.println("YOU CHOOSE OPTION 4");
						System.out.println("Enter student id");
						int useid = Integer.parseInt(br.readLine());
						Student deleteStudent = studentDao.deleteStudent(useid);
						System.out.println("....................YOUR DATA SUCCESSFULLY DELETED...........");
						break;
						
					case 5:
						//FOR UPDATE
						System.out.println("YOU CHOOSE OPTION 5");
						System.out.println("Enter student id");
						int userid = Integer.parseInt(br.readLine());
						System.out.println("Enter student name");
						String username = br.readLine();
						System.out.println("Enter student city");
						String usercity = br.readLine();
						
						Student up = new Student(userid,username,usercity);
						studentDao.updateStudent(up);
						System.out.println(up);
						System.out.println("....................YOUR DATA SUCCESSFULLY UPDATETED...........");
						break;
						
					case 6:
						go=false;
						break;
					
					}
				} catch (Exception e) {
					System.out.println("YOU ENTER WRONG OPTIONS CHOOSE ANOTHER OPTION");
					 e.printStackTrace();
				}
    			
    			System.out.println("THANKYOU FOR USING MY APPLICATION");
    		}
    		
    		
    }
}
