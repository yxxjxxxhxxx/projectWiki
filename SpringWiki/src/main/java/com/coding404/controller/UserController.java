package com.coding404.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.coding404.command.MemberVO;
import com.coding404.command.NoticeVO;
import com.coding404.trip.service.WikiService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	WikiService wikiService;

	@RequestMapping("/regist")
	public void regist() {

	}

	// 회원가입
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String join(MemberVO vo, RedirectAttributes RA) {
		int result = wikiService.join(vo);
		if (result == 1) {
			RA.addFlashAttribute("msg", "가입에 성공하셨습니다.");
			return "redirect:/";
		} else {
			RA.addFlashAttribute("msg", "아이디가 중복됩니다.");
			return "redirect:/user/join";
		}

	}

	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join() {
		return "user/join";
	}

	@RequestMapping("/mypage")
	public void myPage() {
	}

	// 로그인
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(HttpSession session, MemberVO vo) {

		MemberVO aaa = wikiService.login(vo);

		if (aaa != null) {
			session.setAttribute("id", vo.getId());
		} else {
		}

		return "redirect:/"; // 홈
	}

	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

	@RequestMapping("/mypageForm")
	public String mypageForm(MemberVO vo, RedirectAttributes RA, @RequestParam("newpw2") String npw2) {

		MemberVO idpwCheck = wikiService.login(vo);

		if (idpwCheck != null) { // success
			
			if (vo.getPw2().equals(npw2)) {
			
				wikiService.updatePW(vo);
				RA.addFlashAttribute("msg_suc", "비밀번호가 성공적으로 변경되었습니다.");
				return "redirect:/";
			} else {
				
				RA.addFlashAttribute("msg_ne", "새 비밀번호가 일치하지 않습니다.");
				return "redirect:/user/mypage";
			}

		} else { // fail
			RA.addFlashAttribute("msg", "비밀번호가 일치하지 않습니다.");
			return "redirect:/user/mypage";

		}

	}

	// mypage에서 작성글 보기 버튼 폼 이동
	@RequestMapping("/lookMyList")
	public String lookMyList() {

		return "redirect:/notice/notice_myList";
	}

	// mypage에서 글수정 보기 버튼 폼 이동
	@RequestMapping("/lookWrite")
	public String lookWrite() {

		return "notice/notice_write";
	}

	// 폼 태그 연결
	@RequestMapping("/writeForm")
	public String writeForm(NoticeVO vo) {

		wikiService.write(vo);

		return "redirect:/notice/notice_myList";
	}
}
