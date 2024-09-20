package com.test.spboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.test.spboot.service.CarInfoService;
import com.test.spboot.vo.CarInfoVO;

import lombok.extern.slf4j.Slf4j;




@RestController
@Slf4j
public class CarInfoController {

		@Autowired
		private CarInfoService ciService;
		
		@GetMapping("/cars")
		public List<CarInfoVO> getCars(CarInfoVO carInfo) {
			log.info("carInfo=>{}",carInfo);
			return ciService.selectCars();
		}
		
}
