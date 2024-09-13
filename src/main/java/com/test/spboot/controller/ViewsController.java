package com.test.spboot.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class ViewsController {

	@GetMapping("/")
	public String home() {
		return "veiws/index";
	}
	
	@GetMapping("/views/**")
	public void gopage() {}
	
	
	
	
}
