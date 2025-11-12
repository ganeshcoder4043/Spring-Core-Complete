package springmvc.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@RequestMapping("/home")
	public String home(Model model) {
		System.out.println("this is home page / url of home page");
		
		model.addAttribute("name","ganesh");
		model.addAttribute("id",1314);
		
		List<String> friends = new ArrayList<String>();
		friends.add("ganesh");
		friends.add("raja");
		friends.add("bala");
		friends.add("vivek");
		
		model.addAttribute("frnds",friends);
		return "home";
	}
	
	@RequestMapping("/about")
	public String about() {
		System.out.println("this is about page / url of about page");
		return "about";
	}
	
	@RequestMapping("/help")
	public ModelAndView help() {
		System.out.println("this is help page");
		
		ModelAndView mv =  new ModelAndView();
		mv.addObject("name", "ganesh");
		mv.addObject("roll", 1314);
		
		List<String> cars = new ArrayList<String>();
		cars.add("Gvegn r");
		cars.add("lampo");
		cars.add("meds");
		cars.add("farraa");
		
		mv.addObject("cars" , cars);
		
		mv.setViewName("help");
		
		return  mv;
	}
	
	

}
