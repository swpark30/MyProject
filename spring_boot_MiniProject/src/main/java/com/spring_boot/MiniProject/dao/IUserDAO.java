package com.spring_boot.MiniProject.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.spring_boot.MiniProject.model.UserVO;

public interface IUserDAO {
	ArrayList<UserVO> selectAllUser();
	
	UserVO selectUser(String userId);

	// 회원가입
	void InsertUser(UserVO vo);
	
	int selectRoll(String userId);
	
	int selectUserState(String userId);
	
	// 유저 닉네임 조회
	String selectUserNickname(String userId);
	
	String selectUserImg(String userId);

}
