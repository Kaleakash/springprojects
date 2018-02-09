package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.service.EmployeeService;
@Controller
public class EmployeeController {

	@Autowired
	EmployeeService employeeService;
	
	@RequestMapping(value="/empDetails")
	public ModelAndView getEmployeeDetails(ModelMap map) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("display.jsp");
		map.addAttribute("listOfEmp", employeeService.getEmployeeService());
		return mav;
	}
}
