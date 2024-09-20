package com.test.spboot.mapper;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.test.spboot.vo.CarInfoVO;

@Repository
public class CarRepository {
	public List<CarInfoVO> selectCars(CarInfoVO car) {
		List<CarInfoVO> cars = new ArrayList<CarInfoVO>();
		for (int i = 1; i <= 10; i++) {
			CarInfoVO c = new CarInfoVO();
			c.setCiNum(i);
			c.setCiName("차량이름" + i);
			c.setCiYear(2000 + i + "");
			cars.add(c);
		}
		return cars;
	}
}
