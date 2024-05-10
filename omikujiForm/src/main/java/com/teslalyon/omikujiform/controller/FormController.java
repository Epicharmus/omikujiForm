package com.teslalyon.omikujiform.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/omikuji")
public class FormController {
	@RequestMapping("/")
	public String omikujiForm() {
		return "main.jsp";
	}
	
	@RequestMapping("/send")
	public RedirectView formSend(HttpSession session,
		
		@RequestParam(value="number", required = true) String number,
		@RequestParam(value="cityName", required = true) String cityName,
		@RequestParam(value="personName", required = true) String personName,
		@RequestParam(value="activity", required = true) String activity,
		@RequestParam(value="livingThing", required = true) String livingThing,
		@RequestParam(value="kindness", required = true) String kindness) {
		
		session.setAttribute("number", number);
		session.setAttribute("cityName", cityName);
		session.setAttribute("personName", personName);
		session.setAttribute("activity", activity);
		session.setAttribute("livingThing", livingThing);
		session.setAttribute("kindness", kindness);
		
		return new RedirectView("/omikuji/show");
	}
	@RequestMapping("/show")
	public String omikujiDisplay(HttpSession session, Model model) {

		
		String sessionNum = (String) session.getAttribute("number");
		model.addAttribute(sessionNum);
		System.out.println("number is " + session.getAttribute("number"));
		
		String sessionCityName = (String) session.getAttribute("cityName");
		model.addAttribute(sessionCityName);
		System.out.println("city is " + session.getAttribute("cityName"));
		
		String sessionPersonName = (String) session.getAttribute("personName");
		model.addAttribute(sessionPersonName);
		System.out.println("person is " + session.getAttribute("personName"));
		
		String sessionActivity = (String) session.getAttribute("activity");
		model.addAttribute(sessionActivity);
		System.out.println("activity is " + session.getAttribute("activity"));
		
		String sessionLivingThing = (String) session.getAttribute("livingThing");
		model.addAttribute(sessionLivingThing);
		System.out.println("living thing is " + session.getAttribute("livingThing"));
		
		String sessionKindness = (String) session.getAttribute("kindness");
		model.addAttribute(sessionKindness);
		System.out.println("kindness is " + session.getAttribute("kindness"));		
		
		return "omikuji.jsp";
	}
	@RequestMapping("/restart")
	public RedirectView reset(HttpSession session, Model model) {
		if (session.getAttribute("number") != null) {
			session.setAttribute("number", null);
		}
		else if (session.getAttribute("cityName") != null) {
			session.setAttribute("cityName", null);
		}
		else if (session.getAttribute("personName") != null) {
			session.setAttribute("personName", null);
		}
		else if (session.getAttribute("livingThing") != null) {
			session.setAttribute("livingThing", null);
		}
		else if (session.getAttribute("kindness") != null) {
			session.setAttribute("kindness", null);
		}
		return new RedirectView("/omikuji/");
	}
	
}
