package com.acc.controller;


import java.util.List;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.acc.data.Users;
import com.acc.repositories.UsersRepository;
 
@Controller
public class HelloMongoController {
 
	@Autowired
	private UsersRepository repository;
 
	@RequestMapping(value = "/hello", method = RequestMethod.GET)
	public ModelAndView helloWorld( ModelMap model ) {
		List<Users> users = repository.findAll();

		ModelAndView modelAndView = new ModelAndView("index");		
		modelAndView.addObject("users", users );
		
		/*String str = null;
		if(str.equals("Test")) {
			System.out.Println(""KKKK);
		}*/
//	System.out.println("tsssssest");
		return modelAndView;
	}
}