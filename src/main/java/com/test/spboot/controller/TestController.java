package com.test.spboot.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;


@RestController     //그냥 리턴되는 데이터가 나감
public class TestController {
	
	public TestController() {
		System.out.println("안녕 난 프리로딩이야, 엄청 부지런하지!");
	}
	
	@GetMapping("/tests")
	public String test() {
		return "안녕";
	}
	
	@GetMapping("/tests2")
	public String test2() {
		return "안녕2";
	}
	
}
