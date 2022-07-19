package com.spring_boot.MiniProject.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MiniPjController {
	
	@RequestMapping("/")
	public String viewIndex() {
		return "index";
	}
	
	// 공지사항페이지 보기
	@RequestMapping("/noticePage")
	public String viewNoticePage() {
		return "subPage/noticePage";
	}
	
	// 질문페이지 보기
	@RequestMapping("/questionPage")
	public String viewQuestionPage() {
		return "subPage/questionPage";
	}
	
	// 자유페이지 보기
	@RequestMapping("/talkPage")
	public String viewtalkPage() {
		return "subPage/talkPage";
	}
	
	// 뉴스페이지 보기
	@RequestMapping("/ITNewsPage")
	public String viewITNewsPage() {
		return "subPage/ITNewsPage";
	}
	
	// 로그인페이지 보기
	@RequestMapping("/loginForm")
	public String viewlogin() {
		return "subPage/loginForm";
	}
	
	// 회원가입페이지 보기
	@RequestMapping("/join")
	public String viewjoin() {
		return "subPage/join";
	}
	
	// 게시글 작성페이지 보기
	@RequestMapping("/writePage")
	public String viewWritePage() {
		return "subPage/writePage";
	}
	
	// 마이페이지 보기
	@RequestMapping("/myPage")
	public String viewMyPage() {
		return "subPage/myPage";
	}
	
	// 뷰페이지 보기
	@RequestMapping("/viewPage")
	public String viewViewPage() {
		return "subPage/viewPage";
	}
	
	// 관리자페이지 보기
	@RequestMapping("/adminPage")
	public String viewadminPage() {
		return "subPage/adminUser";
	}
	
	// 마이페이지 수정 보기
	@RequestMapping("/myPageEdit")
	public String viewMyPageEditPage() {
		return "subPage/myPageEdit";
	}
}
