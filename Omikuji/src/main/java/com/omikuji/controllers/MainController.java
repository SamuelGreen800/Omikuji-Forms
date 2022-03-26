package com.omikuji.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {
	 @RequestMapping("/")
	    public String index() {
		 return "redirect:/omikuji";
	    }
	
	
	@RequestMapping("/omikuji")
	public String omikuji() {
		return "index.jsp";
}
	
	@PostMapping("/submitForm")
	public String submit(
			@RequestParam("number") int number,
			@RequestParam("city") String city,
			@RequestParam("person") String person,
			@RequestParam("job") String job,
			@RequestParam("critter") String critter,
			@RequestParam("niceties") String niceties,
			HttpSession session
			) {
			String result = String.format(
						"In %s years you will live in %s, with %s as your roomate, %s. You will have %s as a pet. Also, %s",
						number, city, person, job, critter, niceties);
			session.setAttribute("result", result);
			return "redirect:/omikuji/results";
	}
	
	
	@RequestMapping("/omikuji/results")
		public String results(HttpSession session, Model model) {
		String result = (String) session.getAttribute("results");
		model.addAttribute("result", result);
		return "results.jsp";
		
	}



}




