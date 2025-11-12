package springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class RedirectViewController {
	
				/* RedirectView is basically use for direct redirect on another page 
				 * there are two ways using RedirectView  1 and 2  */
	
	
	
	           /* 1  */

	/*
	@RequestMapping("/one")
	public String one() {
		System.out.println("this is one controller");
		return "redirect:/two";
	}
	
	
	@RequestMapping("/two")
	public String two() {
		System.out.println("this is two controller");
		return "redirect:/contact";
	}
	
	*/
	
	
				/* 2  */
	
	@RequestMapping("/one")
	public RedirectView one() {
		System.out.println("this is one controller");
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl("two");
		return redirectView;
	}
	
	
	@RequestMapping("/two")
	public RedirectView two() {
		System.out.println("this is two controller");
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl("contact");
		return redirectView;
	}
	
}
