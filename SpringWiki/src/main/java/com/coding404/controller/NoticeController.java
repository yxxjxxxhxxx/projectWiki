package com.coding404.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.coding404.command.NoticeVO;
import com.coding404.trip.service.WikiService;
import com.coding404.util.Criteria;

@Controller
@RequestMapping("/notice")
public class NoticeController {

	@Autowired
	@Qualifier("wikiService")
	WikiService wikiService;

	@RequestMapping("/notice_write")
	public String wirte() {
		return "notice/notice_write";
	}

	// 검색했을 때 list 도출
	@RequestMapping("/notice_list")
	public String getList(Criteria cri, Model model) {

		List<NoticeVO> list = wikiService.getList(cri);
		model.addAttribute("list", list);

		return "notice/notice_list";

	}

	@RequestMapping("/notice_modify")
	public String notice_modify(@RequestParam("eno") int eno, Model model) {

		NoticeVO vo = wikiService.getDetail(eno);
		System.out.println(vo.toString());
		model.addAttribute("vo", vo);

		return "notice/notice_modify";
	}

	@RequestMapping("/modifyForm")
	public String modifyForm(NoticeVO vo) {

		int result = wikiService.noticeUpdate(vo);
		System.out.println(result);
		return "redirect:/notice/notice_myList";
	}

	// 내 작성글 보기
	@RequestMapping("/notice_myList")
	public String notice_myList(HttpSession session, Model model) {

		String id = (String) session.getAttribute("id");

		List<NoticeVO> list = wikiService.getMylist(id);
		model.addAttribute("list", list);

		return "notice/notice_myList";
	}

	@RequestMapping("/notice_view")
	public String notice_view(@RequestParam("eno") int eno, Model model) {

		NoticeVO vo = wikiService.getDetail(eno);
		model.addAttribute("vo", vo);

		wikiService.upHit(eno);

		return "notice/notice_view";
	}

	@RequestMapping("/myList_view")
	public String myList_view(@RequestParam("eno") int eno, Model model) {

		NoticeVO vo = wikiService.getDetail(eno);
		model.addAttribute("vo", vo);

		wikiService.upHit(eno);

		return "notice/myList_view";
	}

	// notice_view에서 notice_list로 돌아가기
	@RequestMapping("/backToList")
	public String backToList() {

		return "redirect:/notice/notice_list";
	}

	// myLlist_view에서 notice_myList로 돌아가기
	@RequestMapping("/backTomyList")
	public String backTomyList() {

		return "redirect:/notice/notice_myList";
	}

	@RequestMapping("/errorDelete")
	public String errorDelete(@RequestParam("eno") int eno) {
		wikiService.errorDelete(eno);
		return "redirect:/notice/notice_myList";
	}

}
