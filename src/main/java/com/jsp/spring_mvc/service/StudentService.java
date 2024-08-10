package com.jsp.spring_mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.spring_mvc.entity.SocialProfile;
import com.jsp.spring_mvc.entity.Student;
import com.jsp.spring_mvc.repository.StudentRepository;

@Service
public class StudentService {

	@Autowired
	private StudentRepository studentRepository;

	public ModelAndView addStudnet(Student student) {
		// Saving the Data in the Database
		studentRepository.addStudent(student);
		ModelAndView mvc = new ModelAndView();
		mvc.setViewName("index.jsp");

		return mvc;

	}

	public ModelAndView displayAllStudent() {
		List<Student> students = studentRepository.displayAllStudent();
		ModelAndView mvc = new ModelAndView();
		mvc.setViewName("displayAllStudent.jsp");
		mvc.addObject("students", students);

		return mvc;

	}

	public ModelAndView updateStudent(int studentId) {

		Student students = studentRepository.findStudentById(studentId);
		ModelAndView mvc = new ModelAndView();
		mvc.addObject("updateStudent", students);
		mvc.setViewName("updateStudent.jsp");

		return mvc;

	}

	public ModelAndView saveUpdateStudent(Student student) {
		studentRepository.upadteStudent(student);
		List<Student> students = studentRepository.displayAllStudent();

		ModelAndView mvc = new ModelAndView();
		mvc.setViewName("displayAllStudent.jsp");
		mvc.addObject("students", students);
		return mvc;

	}

	public ModelAndView deleteStudent(int studentId) {

		studentRepository.deleteStudent(studentId);
		ModelAndView mvc = new ModelAndView();
		mvc.setViewName("displayAllStudents");

		return mvc;

	}
}
