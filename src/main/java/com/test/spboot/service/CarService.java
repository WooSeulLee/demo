package com.test.spboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.spboot.mapper.CarRepository;
import com.test.spboot.vo.CarVO;

@Service
public class CarService {
	
	
	@Autowired
	private CarRepository carRepository;
	
	public List<CarVO> getCars(CarVO car){
		return carRepository.selectCars(car);
	}
}
