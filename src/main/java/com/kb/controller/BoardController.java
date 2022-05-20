package com.kb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kb.domain.BoardVO;
import com.kb.service.BoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/board/*")
@AllArgsConstructor
public class BoardController {

	// service 객체
	private BoardService service;

	// ------------------------------------------------------------------------------------------------------------------------

	// R - 리스트 / 주소 : http://localhost/board/list
	@GetMapping("list")
	public void list(Model model) {
		log.info("목록");
		model.addAttribute("list", service.getList());// model을 통해서, view에 값을 주는 방법
	}

	// ------------------------------------------------------------------------------------------------------------------------

	// C - 글 등록
	/*
	 * 다른 방법 public String register() { log.info("등록"); return "board/register" }
	 */
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void register() {
		log.info("등록");
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String register(BoardVO board, RedirectAttributes rttr) {
		service.register(board);// 등록하는 메소드
		return "redirect:/board/list";
	}

	// ------------------------------------------------------------------------------------------------------------------------

	// R - 글 상세보기
	@RequestMapping(value = "/get", method = RequestMethod.GET)
	// public void get(int bno) {
	public void get(@RequestParam("bno") int bno, Model model) {
		model.addAttribute("board", service.get(bno));

	}

	// U - 수정 modify
	@RequestMapping(value = "/get", method = RequestMethod.POST)
	public String get(BoardVO board) {

		boolean result = service.modify(board);
		if (result) {
			return "redirect:/board/list";
		} else {
			return "redirect:/board/get?bno=" + board.getBno();
		}

	}

	// ------------------------------------------------------------------------------------------------------------------------

	// D - 삭제 remove
	@RequestMapping(value = "/remove", method = RequestMethod.GET)
	// GET방식
	public String remove(@RequestParam("bno") int bno) {
		service.remove(bno);
		return "redirect:/board/list";
	}

	// post방식
	@RequestMapping(value = "/remove", method = RequestMethod.POST)
	public String remove(BoardVO board) {

		service.remove(board.getBno());

		return "redirect:/board/list";
	}
}
