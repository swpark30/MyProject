package com.spring_boot.MiniProject.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot.MiniProject.dao.IUserDAO;
import com.spring_boot.MiniProject.model.UserVO;

@Service
public class UserService implements IUserService {
	
	@Autowired
	@Qualifier("IUserDAO")
	IUserDAO dao;

	@Override
	public ArrayList<UserVO> selectAllUser() {
		// TODO Auto-generated method stub
		return dao.selectAllUser();
	}

	// 유저 조회 기능
	@Override
	public UserVO selectUser(String userId) {
		// TODO Auto-generated method stub
		return dao.selectUser(userId);
	}

	@Override
	public void InsertUser(UserVO vo) {
		// TODO Auto-generated method stub
		dao.InsertUser(vo);
	}

	@Override
	public String selectUserNickname(String userId) {
		// TODO Auto-generated method stub
		return dao.selectUserNickname(userId);
	}

	@Override
	public String selectUserImg(String userId) {
		// TODO Auto-generated method stub
		return dao.selectUserImg(userId);
	}

	@Override
	public int selectRoll(String userId) {
		// TODO Auto-generated method stub
		return dao.selectRoll(userId);
	}

	@Override
	public int selectUserState(String userId) {
		// TODO Auto-generated method stub
		return dao.selectUserState(userId);
	}
	
	

}
