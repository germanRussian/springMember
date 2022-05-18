package com.kb.controller;



import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kb.service.BoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@Controller
@Log4j
@RequestMapping("/board/*")
@AllArgsConstructor
public class BoardController {
	
	private BoardService service;
	
	
	// 주소 : http://localhost/board/list
	@GetMapping("list")
	public void list(Model model) {
		log.info("목록");
		model.addAttribute("list", service.getList());//view에 값을 주는 방법
		
	}
	
	

}
