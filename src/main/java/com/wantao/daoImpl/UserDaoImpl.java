package com.wantao.daoImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wantao.bean.User;
import com.wantao.dao.UserDao;

@Service
public class UserDaoImpl implements UserDao {
	@Autowired
	UserDao userDao;

	public List<User> findAllUser() {

		return userDao.findAllUser();
	}

	public void addUser(User user) {
		userDao.addUser(user);
	}

	public User findUserByName(String name) {
		return userDao.findUserByName(name);
	}

	@Override
	public void updatePassword(String password,User user) {
        userDao.updatePassword(password,user);		
	}

}
