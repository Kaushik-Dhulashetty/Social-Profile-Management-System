package com.jsp.spring_mvc.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.springframework.stereotype.Repository;

import com.jsp.spring_mvc.entity.SocialProfile;
import com.jsp.spring_mvc.entity.Student;

@Repository
public class StudentRepository {

	public static EntityManager getEntityManager() {

		EntityManagerFactory emf = Persistence.createEntityManagerFactory("Student");
		EntityManager em = emf.createEntityManager();
		return em;

	}

	public void addStudent(Student student) {
		EntityManager em = StudentRepository.getEntityManager();
		EntityTransaction et = em.getTransaction();

		et.begin();
		em.persist(student);
		et.commit();
		em.close();
	}

	public void upadteStudent(Student student) {
		EntityManager em = StudentRepository.getEntityManager();
		EntityTransaction et = em.getTransaction();

		et.begin();
		em.merge(student);
		et.commit();
		em.close();
	}

	public void deleteStudent(int studentId) {
		EntityManager em = StudentRepository.getEntityManager();
		EntityTransaction et = em.getTransaction();
		Student student = em.find(Student.class, studentId);
		et.begin();
		em.remove(student);
		et.commit();
		em.close();
	}

	public Student findStudentById(int studentId) {
		EntityManager em = StudentRepository.getEntityManager();
		EntityTransaction et = em.getTransaction();

		et.begin();
		Student student = em.find(Student.class, studentId);
		et.commit();
		em.close();

		return student;
	}

	public List<Student> displayAllStudent() {
		EntityManager em = StudentRepository.getEntityManager();
		EntityTransaction et = em.getTransaction();
		et.begin();
		List<Student> students = em.createQuery("from Student").getResultList();

		et.commit();
		em.close();
		return students;
	}
	
}
