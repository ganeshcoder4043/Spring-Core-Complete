package springmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import springmvc.Service.UserService;
import springmvc.model.User;

@Controller
public class ContactController {
	
	@Autowired
	private UserService userService;
	
	
	@ModelAttribute
	public void commonAttributiesOfJsp(Model model) {
		/* yeh method es liye bna taki sabhi controller me use kr sken it is to use 
		   common esliye bnya taki dono controller me use kr sken , taki indivisual each controller me na likhne padhe    */
		model.addAttribute("desc", "This is Form Page ");
		model.addAttribute("tittle", "This is tittle ");
	}
	
	@RequestMapping("/contact")
	public String showFrom() {
		return "contact";
	}
	
	@RequestMapping(path ="/processform", method = RequestMethod.POST )
	public String handleForm(@ModelAttribute("user") User user, Model model) 
	{
		this.userService.createUser(user);
		
		if(user.getUserName().isBlank()) 
		{
			return "redirect:/contact";
		}
		return "success";
	}

}



/*  this is using @RequestParam
@RequestMapping(path ="/processform", method = RequestMethod.POST )
public String handleForm(
		@RequestParam("userName") String userName,
		@RequestParam("email") String email,
		@RequestParam("password") String password, Model model) 
{
	model.addAttribute("userName", userName);
	model.addAttribute("email", email);
	model.addAttribute("password", password);
	
	return "success";
}

*/

