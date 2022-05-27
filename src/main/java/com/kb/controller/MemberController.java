package com.kb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kb.domain.MemberVO;
import com.kb.domain.MemberCriteria;
import com.kb.domain.MemberPageDTO;
import com.kb.service.MemberService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/member/*")
@AllArgsConstructor
public class MemberController {

	// service 객체
	private MemberService service;

	// ------------------------------------------------------------------------------------------------------------------------

	// R - 리스트 / 주소 : http://localhost/member/list
//	@GetMapping("list")
//	public void list(Model model) {
//		log.info("목록");
//		model.addAttribute("list", service.getList());// model을 통해서, view에 값을 주는 방법
//	}

	// 10개씩 게시물을 보여주겠다~~
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void list(MemberCriteria cri, Model model) {
		log.info("cri paging");
		model.addAttribute("list", service.getListWithPaging(cri));
		model.addAttribute("pageMaker", new MemberPageDTO(service.getListWithcnt(cri), cri)); // 전체1000건이다~~~.

	}

	// ------------------------------------------------------------------------------------------------------------------------

	// C - 글 등록
	/*
	 * 다른 방법 public String register() { log.info("등록"); return "member/register" }
	 */
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void register() {
		log.info("등록");
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String register(MemberVO member, RedirectAttributes rttr) {
		service.register(member);// 등록하는 메소드
		return "redirect:/member/list";
	}

	// ------------------------------------------------------------------------------------------------------------------------

	// R - 글 상세보기
	@RequestMapping(value = "/get", method = RequestMethod.GET)
	// public void get(int num) {
	public void get(@RequestParam("num") int num, Model model) {
		model.addAttribute("member", service.get(num));

	}

	// paging

	// U - 수정 modify
	@RequestMapping(value = "/get", method = RequestMethod.POST)
	public String get(MemberVO member) {

		boolean result = service.modify(member);
		if (result) {
			return "redirect:/member/list";
		} else {
			return "redirect:/member/get?num=" + member.getNum();
		}

	}

	// ------------------------------------------------------------------------------------------------------------------------

	// D - 삭제 remove
	@RequestMapping(value = "/remove", method = RequestMethod.GET)
	// GET방식
	public String remove(@RequestParam("num") int num) {
		service.remove(num);
		return "redirect:/member/list";
	}

	// post방식
	@RequestMapping(value = "/remove", method = RequestMethod.POST)
	public String remove(MemberVO member) {

		service.remove(member.getNum());

		return "redirect:/member/list";
	}
}
