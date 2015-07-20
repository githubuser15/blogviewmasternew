package com.acc.controller;


import java.util.List;

import org.json.JSONException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.acc.data.Users;
import com.acc.datasources.CrowdDataSource;
import com.acc.repositories.UsersRepository;


 
@Controller
public class HelloMongoController {
 
	@Autowired
	private UsersRepository repository;
	
	@RequestMapping(value = "/sample", method = RequestMethod.GET)
	public ModelAndView getdata() {

		//List<String> list = getList();

		ModelAndView model = new ModelAndView("sample");
		//model.addObject("lists", "true");
		//model.addObject("lists", list);

		return model;

	}

	@RequestMapping(value = "/hello", method = RequestMethod.GET)
	public ModelAndView helloWorld( ModelMap model ) {
		List<Users> users = repository.findAll();

		ModelAndView modelAndView = new ModelAndView("index");		
		modelAndView.addObject("users", users );
		//System.out.println("in hmc");
		/*String str = null;
		if(str.equals("Test")) {
			System.out.Println(""KKKK);
		}*/
    System.out.println("tsssssest");
		//adding the comments gfg 
	adding the cooments
		return modelAndView;
	}


	@RequestMapping(value = "/tasks", method = RequestMethod.GET)
	public ModelAndView getCrowdtasks() throws JSONException {
		
		ModelAndView mv = new ModelAndView () ;
		CrowdDataSource cds= new CrowdDataSource();		
		mv.getModelMap().addAttribute("tasks", cds.getCrowdTasks()) ;		
		mv.setViewName("crowdtasks");
		return mv ;
	}
	

}