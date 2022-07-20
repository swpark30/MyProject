package com.spring_boot.MiniProject.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.spring_boot.MiniProject.model.UserVO;	

public interface IUserService {
	ArrayList<UserVO> selectAllUser();
	
	UserVO selectUser(String userId);
	
	// 회원가입
	void InsertUser(UserVO vo);
	
	// 유저 닉네임 조회
	String selectUserNickname(String userId);
	
	String selectUserImg(String userId);
	
	int selectRoll(String userId);
	
	int selectUserState(String userId);
	
}
