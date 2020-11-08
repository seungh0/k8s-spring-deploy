package com.spring.k8s;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MainController {

	@GetMapping("/ping")
	public String ping() {
		return "pong";
	}

	@GetMapping("/ping1")
	public String ping1() {
		return "pong1";
	}

}
