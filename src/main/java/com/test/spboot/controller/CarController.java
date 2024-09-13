package com.test.spboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.test.spboot.service.CarService;
import com.test.spboot.vo.CarVO;
import org.springframework.web.bind.annotation.RequestParam;




@Controller
public class CarController {

	
		@Autowired
		private CarService carService;
		
		@GetMapping("/cars")
		public String getCars(CarVO car, Model model) {
			carService.getCars(car);
			model.addAttribute("cars",carService.getCars(car));
			System.out.println(car);
			return "views/car/car-list";
		}
		
}
