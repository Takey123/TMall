package com.newfi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {

	@RequestMapping("/admin/{username}")
	public String index(@PathVariable("username") String username) {
		System.out.println(username);
		return "/admin/"+username;
	}
}
