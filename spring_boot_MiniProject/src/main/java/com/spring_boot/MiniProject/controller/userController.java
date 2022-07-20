package com.spring_boot.MiniProject.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring_boot.MiniProject.model.UserVO;
import com.spring_boot.MiniProject.service.UserService;

@Controller
public class userController {

	@Autowired
	UserService userService;
	
	@Autowired
	PasswordEncoder pwEncoder;


	// 로그인페이지 보기
	@RequestMapping("/test/loginForm")
	public String viewlogin() {
		return "test/loginForm";
	}

	// 회원가입페이지 보기
	@RequestMapping("/test/joinForm")
	public String viewjoin() {
		return "test/joinForm";
	}


	

	@RequestMapping("/test/selectAllUser")
	public String selectAllUser(Model model) {
		model.addAttribute("userList", userService.selectAllUser());
		return "test/selectAllUserView";
	}

	// 로그인 처리
	@ResponseBody
	@RequestMapping("/test/login")
	public String userlogin(
			@RequestParam("userId") String userId,
			@RequestParam("userPw") String userPw,
			HttpSession session) {

		UserVO vo = userService.selectUser(userId);

		// vo가 null이면 로그인 실패
		if (vo == null) {
			return "FAIL";
		} else {
			
			if(!pwEncoder.matches(userPw, vo.getUserPw()))
				return "FAIL";				
			
			// 세션저장
			session.setAttribute("sid", vo.getUserId());
			session.setAttribute("userNickname", vo.getUserNickname());
			session.setAttribute("userImg", vo.getUserImg());
			session.setAttribute("roll", vo.getRoll());
			return "SUCCESS";

		}

	}

	// 로그아웃 처리
	@RequestMapping("/test/logout")
	public String userLogout(HttpSession session) {
		session.invalidate();
		return "redirect:/test";
	}
	
	// 회원가입 처리
	@ResponseBody
	@RequestMapping("/test/join")
	public String userJoin(@RequestParam("userName") String userName,
			@RequestParam("userNickname") String userNickname,
			@RequestParam("userId") String userId,
			@RequestParam("userEmail") String userEmail,
			@RequestParam("userPw") String userPw) {
		
		UserVO vo = new UserVO();
		vo.setUserName(userName);
		vo.setUserNickname(userNickname);
		vo.setUserId(userId);
		vo.setUserEmail(userEmail);
		vo.setUserPw(pwEncoder.encode(userPw));
		
		userService.InsertUser(vo);
		
		return "SUCCESS";
	}
	
	@RequestMapping("/test/userController")
	public String userContr() {
		return "test/userController";
	}
	

}
