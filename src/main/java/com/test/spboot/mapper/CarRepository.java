package com.test.spboot.mapper;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.test.spboot.vo.CarVO;

@Repository
public class CarRepository {
	public List<CarVO> selectCars(CarVO car) {
		List<CarVO> cars = new ArrayList<CarVO>();
		for (int i = 1; i <= 10; i++) {
			CarVO c = new CarVO();
			c.setCiNum(i);
			c.setCiName("차량이름" + i);
			c.setCiYear(2000 + i + "");
			cars.add(c);
		}
		return cars;
	}
}
