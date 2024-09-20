package com.test.spboot.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class ViewsController {

	@GetMapping("/") //컨트롤러 외에는 getMapping 동작x
	public String home() {
		return "veiws/index";
	}
	
	@GetMapping("/views/**")
	public void gopage() {}
	
	
	
	
}
