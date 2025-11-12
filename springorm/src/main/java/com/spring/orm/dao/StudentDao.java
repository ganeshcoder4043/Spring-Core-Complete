package com.spring.orm.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.orm.hibernate5.HibernateTemplate;

import com.spring.orm.entities.Student;

public class StudentDao {
	
	private HibernateTemplate hibernateTemplate;
	
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	//save
	/*
	 * @Transactional public int insert(Student student) { // insert Integer i =
	 * (Integer) this.hibernateTemplate.save(student); return i; }
	 * 
	 * // Getting single data form table public Student getStudent(int studentId) {
	 * Student student = this.hibernateTemplate.get(Student.class, studentId);
	 * return student; }
	 * 
	 * // Getting all data from table public List<Student> getAllStudent(){
	 * List<Student> all = this.hibernateTemplate.loadAll(Student.class); return
	 * all; }
	 * 
	 * // Delete data
	 * 
	 * @Transactional public Student deleteStudent(int studentId) { Student student
	 * = this.hibernateTemplate.get(Student.class, studentId);
	 * this.hibernateTemplate.delete(student);
	 * 
	 * return student; }
	 * 
	 * // Update
	 * 
	 * @Transactional public void updateStudent(Student student) {
	 * this.hibernateTemplate.update(student); }
	 */
	
	// WITH USING EXECPTION HANDLING
	
	  // ---------------- SAVE ----------------
	@Transactional	
	public int insert(Student student) {
		try {
			Integer id = (Integer) this.hibernateTemplate.save(student);
			System.out.println("YOUR DATA SUCCESSFULLY INSERTED"+id);
			return id;
		} catch (Exception e) {
			System.err.println("❌ Error while inserting student: " + e.getMessage());
			e.printStackTrace();
            return -1; // indicate failure
		}
	}
	
	public Student getStudent(int studentId) {
		try {
			Student student = this.hibernateTemplate.get(Student.class, studentId);
			if(student == null) {
				System.out.println("⚠️ No student found with ID: " + studentId);
			}
			return student;
		} catch (Exception e) {
			System.err.println("❌ Error while fetching student with ID " + studentId + ": " + e.getMessage());
            e.printStackTrace();
            return null;
		}
	}
	
	 // ---------------- GET ALL STUDENTS ----------------
    public List<Student> getAllStudent() {
        try {
            List<Student> all = this.hibernateTemplate.loadAll(Student.class);
            System.out.println("✅ Retrieved " + all.size() + " students from database.");
            return all;
        } catch (Exception e) {
            System.err.println("❌ Error while fetching all students: " + e.getMessage());
            e.printStackTrace();
            return null;
        }
    }
	
 // ---------------- DELETE STUDENT ----------------
    @Transactional
    public Student deleteStudent(int studentId) {
        try {
            Student student = this.hibernateTemplate.get(Student.class, studentId);
            if (student == null) {
                System.out.println("⚠️ Cannot delete: Student with ID " + studentId + " not found.");
                return null;
            }
            this.hibernateTemplate.delete(student);
            System.out.println("✅ Student deleted successfully with ID: " + studentId);
            return student;
        } catch (Exception e) {
            System.err.println("❌ Error while deleting student with ID " + studentId + ": " + e.getMessage());
            e.printStackTrace();
            return null;
        }
    }
    
    // ---------------- UPDATE STUDENT ----------------
    @Transactional
    public void updateStudent(Student student) {
        try {
            this.hibernateTemplate.update(student);
            System.out.println("✅ Student updated successfully with ID: " + student.getStudentId());
        } catch (Exception e) {
            System.err.println("❌ Error while updating student with ID " + student.getStudentId() + ": " + e.getMessage());
            e.printStackTrace();
        }
    }


}
