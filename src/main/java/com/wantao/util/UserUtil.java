package com.wantao.util;

import org.springframework.stereotype.Component;

import com.wantao.bean.User;

@Component
public class UserUtil {
	public static boolean flag = true;

	public void check(User user,String password1) {
		checkNull(user.getName(),user.getPassword(),user.getEmail(),user.getPhone(),password1);
		checkSamePassword(user.getPassword(), password1);

	}
	public <T> void check(T... args) {
		checkNull(args);
	}

	public <T> void checkNull(T... args) {
		for (T arg : args) {
			if (arg == null || arg == "" || arg.toString().contains(" ")) {
				flag = false;
			}
		}
	}

	public void checkSamePassword(String password, String password1) {
		if (!password.equals(password1)) {
			flag = false;
		}
	}
	public void checkPassword(User user,String password) {
		if(!user.getPassword().equals(password)) {
			flag=false;
		}
	}

}
