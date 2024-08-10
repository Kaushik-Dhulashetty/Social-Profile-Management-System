package com.jsp.spring_mvc.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.spring_mvc.entity.Student;
import com.jsp.spring_mvc.service.StudentService;

@Controller
public class StudentController {

	@Autowired
	private StudentService studentService;

	@RequestMapping(value = "/addStudent",method = RequestMethod.POST)
	public ModelAndView addStudent(Student student) {
		return studentService.addStudnet(student);
	}
	
	@RequestMapping(value = "/displayAllStudents")
	public ModelAndView displayAllStudents(@ModelAttribute Student student) {
		return studentService.displayAllStudent();
	}
	@RequestMapping(value = "/updateStudent" )
	public ModelAndView updateStudent(@RequestParam int studentId) {
		return studentService.updateStudent(studentId);
	}
	
	@RequestMapping(value = "/saveUpdateStudent",method = RequestMethod.POST)
	public ModelAndView saveUpdateStudent(Student student) {
		return studentService.saveUpdateStudent(student);
	}
	@RequestMapping(value = "deleteStudent")
	public ModelAndView deleteStudent(@RequestParam int studentId) {
		return studentService.deleteStudent(studentId);
	}
	
}
