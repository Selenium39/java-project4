package com.wantao.test;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.wantao.bean.User;
import com.wantao.daoImpl.UserDaoImpl;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring.xml"})
public class UserTest {
	@Autowired
	UserDaoImpl userDaoImpl;
	@Autowired
	@Qualifier("user1")
	User user1;
	//@Test
	public void test1() {
		List<User> users=new ArrayList<User>();
		users=userDaoImpl.findAllUser();
		for(User user: users) {
			System.out.println(user.toString());
		}
	}
	//@Test
	public void test2() {
		userDaoImpl.addUser(user1);
	}
	//@Test
	public void test3() {
		System.out.println(userDaoImpl.findUserByName("万涛").toString());
	}
	//@Test
	public void test4() {
		User user=userDaoImpl.findUserByName("万涛");
		userDaoImpl.updatePassword("111111", user);
	}
     
}
