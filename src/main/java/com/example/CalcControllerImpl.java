package com.example;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CalcControllerImpl {
	
	@Autowired
	private CalcServiceImpl calcService;

	//@RequestMapping(method=RequestMethod.GET,value = "/calc")
	@GetMapping("/calc")
	public String calcGet(Model model) {
		Calc c = new Calc();
		model.addAttribute("c", c);
		return "calculator"; //view name sent back to D.S -->
		//ViewResolver --> apply prefix / and suffix .jsp -> calculator.jsp
	}
	
	@PostMapping("/calc")
	public String calcPost(Calc c,Model model) {
		int result = calcService.calculate(c.getNum1(), c.getNum2(), c.operation);
		c.setResult(result);
		model.addAttribute("c", c);
		return "calculator";
	}
}
