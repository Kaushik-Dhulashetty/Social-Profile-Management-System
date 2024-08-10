package com.jsp.spring_mvc.controllers;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.spring_mvc.entity.SocialProfile;
import com.jsp.spring_mvc.service.SocialProfileService;

@Controller
public class SocialProfileController {
	@Autowired
	private SocialProfileService socialProfileService;

	@RequestMapping(value = "/displayAllProfiles")
	public ModelAndView displayAllSocialProfiles(@RequestParam int studentId) {
		return socialProfileService.displayAllSocialProfiles(studentId);
	}

	@RequestMapping(value = "/addSocialProfile",method = RequestMethod.POST)
	public ModelAndView addStudentProfile(SocialProfile socialProfile,@RequestParam int studentId) {
		return socialProfileService.addStudentProfile(socialProfile, studentId);
	}

	@RequestMapping(value = "/updateSocialProfile", method = RequestMethod.GET)
	public ModelAndView updateSocialProfile(@RequestParam int socialProfileId, @RequestParam int studentId) {
		return socialProfileService.updateSocialProfile(socialProfileId, studentId);
	}

	@RequestMapping(value = "/updateSocialProfileSave")
	public ModelAndView updateSocialProfileSave(SocialProfile socialProfile, @RequestParam int studentId) {
		return socialProfileService.updateSocialProfileSave(socialProfile, studentId);
	}

	@RequestMapping(value = "/deleteSocialProfile", method = RequestMethod.GET)
	public ModelAndView deleteSocialProfile(@RequestParam int socialProfileId, @RequestParam int studentId) {
		return socialProfileService.deleteSocialProfile(socialProfileId, studentId);
	}
}
