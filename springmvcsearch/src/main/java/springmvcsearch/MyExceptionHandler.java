package springmvcsearch;

import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

@ControllerAdvice
public class MyExceptionHandler {

	
	//-> For Multiple Exception 
//	@ExceptionHandler({NullPointerException.class, NumberFormatException.class, IllegalStateException.class})
//	public String exceptionHandler() {
//		return "errorPage";
//	}
	
	
	//-> for single Exception 
	
	@ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
	@ExceptionHandler(value = NullPointerException.class)
	public String exceptionHandler1(Model m) {
		m.addAttribute("msg", "NullPointerException");
		return "errorPage";
	}
	
	@ResponseStatus(value = HttpStatus.BAD_GATEWAY)
	@ExceptionHandler(value = NumberFormatException.class)
	public String exceptionHandler2(Model m) {
		m.addAttribute("msg", "NumberFormatException");
		return "errorPage";
	}
	
}
