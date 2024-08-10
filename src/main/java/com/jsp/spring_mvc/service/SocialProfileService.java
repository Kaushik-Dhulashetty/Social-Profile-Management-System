package com.jsp.spring_mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.spring_mvc.entity.SocialProfile;
import com.jsp.spring_mvc.entity.Student;
import com.jsp.spring_mvc.repository.SocialProfileRepository;
import com.jsp.spring_mvc.repository.StudentRepository;

@Service
public class SocialProfileService {

	@Autowired
	private SocialProfileRepository socialProfileRepository;

	@Autowired
	private StudentRepository studentRepository;

	public ModelAndView displayAllSocialProfiles(int studentId) {
		Student student = studentRepository.findStudentById(studentId);
		List<SocialProfile> profiles = student.getSocialProfiles();
		return new ModelAndView("displayAllSocialProfiles.jsp").addObject("socialProfiles", profiles)
				.addObject("studentId", studentId);
	}

	public ModelAndView addStudentProfile(SocialProfile socialProfile, int studentId) {
		Student student = studentRepository.findStudentById(studentId);
		socialProfile.setStudent(student);

		socialProfileRepository.addStudentProfile(socialProfile, student, studentId);
		List<SocialProfile> profiles = student.getSocialProfiles();
		return new ModelAndView(
				"displayAllProfiles").addObject("socialProfiles", profiles).addObject("studentId",
				studentId);
	}

	public ModelAndView updateSocialProfile(int socialProfileId, int studentId) {
		SocialProfile socialProfile = socialProfileRepository.findSocialProfileId(socialProfileId);
		return new ModelAndView("UpdateSocialProfile.jsp").addObject("socialProfile", socialProfile)
				.addObject("studentId", studentId);
	}

	public ModelAndView updateSocialProfileSave(SocialProfile socialProfile, int studentId) {
		socialProfile.setStudent(studentRepository.findStudentById(studentId));
		socialProfileRepository.updateSocialProfileSave(socialProfile);
		return new ModelAndView("displayAllProfiles").addObject("studentId", studentId);
	}

	public ModelAndView deleteSocialProfile(int socialProfileId, int studentId) {
		socialProfileRepository.deleteSocialProfile(socialProfileRepository.findSocialProfileId(socialProfileId));
		return new ModelAndView("displayAllProfiles").addObject("studentId", studentId);
	}
}
