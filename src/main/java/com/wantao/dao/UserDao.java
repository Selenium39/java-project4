package com.wantao.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.wantao.bean.User;
@Repository
public interface UserDao {
	//查询
	public List<User> findAllUser();
	public User findUserByName(String name);
	//增加
	public void addUser(User user);
	//修改
	public void updatePassword(@Param(value = "password") String password,@Param(value="user") User user);//当有两个参数时，必须使用@Param
	
    
}
