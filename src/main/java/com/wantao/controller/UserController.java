package com.wantao.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.wantao.bean.Photo;
import com.wantao.bean.User;
import com.wantao.daoImpl.PhotoDaoImpl;
import com.wantao.daoImpl.UserDaoImpl;
import com.wantao.util.PhotoUtil;
import com.wantao.util.UserUtil;

@Controller
public class UserController {
	private static String Success = "success";
	private static String Error = "error";
	private static String UserError = "userError";
	@Autowired
	UserUtil userUtil;
	@Autowired
	UserDaoImpl userDaoImpl;
	@Autowired
	PhotoUtil photoUtil;
	@Autowired
	PhotoDaoImpl photoDaoImpl;

	// 注册
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String register(User user, String password1, HttpSession session) {
		session.setAttribute("url", "/register");
		userUtil.check(user, password1);
		if (userUtil.flag == false) {
			return Error;
		}
		userDaoImpl.addUser(user);

		return Success;

	}

	// 登录
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(String name, String password, HttpSession session) {
		session.setAttribute("url", "/login");
		userUtil.check(name, password);
		if (userUtil.flag == false) {
			System.out.println("用户名或者密码格式不正确");
			return Error;
		}
		User user = null;
		try {
			user = userDaoImpl.findUserByName(name);
		} catch (Exception e) {
			System.out.println("获取用户失败");
			return Error;
		}
		userUtil.checkPassword(user, password);
		if (userUtil.flag == false) {
			System.out.println("密码不正确");
			return Error;
		}
		session.setAttribute("user", user);
		return Success;
	}

	@RequestMapping(value = "/findPassword", method = RequestMethod.POST)
	// 找回密码
	public String findPassword(String name, String phone, HttpSession session) {
		session.setAttribute("url", "/findPassword");
		userUtil.check(name, phone);
		if (userUtil.flag == false) {
			System.out.println("用户名或者电话格式不正确");
			return Error;
		}
		User user = null;
		try {
			user = userDaoImpl.findUserByName(name);
			session.setAttribute("user", user);
		} catch (Exception e) {
			System.out.println("获取用户失败");
			return Error;
		}
		if (!phone.equals(user.getPhone())) {
			System.out.println("手机号码不匹配");
			return Error;
		}

		return "redirect:changePassword.jsp";
	}

	// 修改密码
	@RequestMapping(value = "/changePassword", method = RequestMethod.POST)
	public String changePassword(String password, String password1, HttpSession session) {
		session.setAttribute("url", "/changePassword");
		userUtil.checkNull(password);
		userUtil.checkSamePassword(password, password1);
		if (userUtil.flag == false) {
			System.out.println("密码不一致");
			return Error;
		}
		User user = null;
		try {
			user = (User) session.getAttribute("user");
		} catch (Exception e) {
			System.out.println("用户获取失败");
		}
		userDaoImpl.updatePassword(password, user);
		return Success;

	}

	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public String upload(String photoName, String photoType, @RequestParam("photo") MultipartFile file,
			HttpSession session, HttpServletRequest request) {
		Photo photo = null;
		String smallPhotoAddress = null;
		session.setAttribute("url", "/upload");
		// 上传照片并返回路径
		String photoPath = photoUtil.saveFile(file, request);
		if (photoPath == null) {
			return UserError;
		}
		// 获取图片信息
		try {
			photo = photoUtil.getPhotoInf(photoPath);
		} catch (IOException e) {
			e.printStackTrace();
			return UserError;
		}
		if (photo == null) {
			return UserError;
		}
		photo.setPhotoType(photoType);
		photo.setUserPhotoName(photoName);
		// 生成略缩图
		try {
			smallPhotoAddress = photoUtil.createSmallPhoto(photoPath);
		} catch (IOException e) {
			e.printStackTrace();
			return UserError;
		}
		if (smallPhotoAddress == null) {
			return UserError;
		}
		photo.setsmallPhotoAddress(smallPhotoAddress);
		// 设置照片上传用户
		User user = (User) session.getAttribute("user");
		if (user == null) {
			return UserError;
		}
		photo.setUserName(user.getName());
		photoDaoImpl.addPhoto(photo);
		return Success;
	}

	@RequestMapping(value = "/showImages", method = RequestMethod.GET)
	public String showImages(@RequestParam("imageType") String imageType, HttpSession session) {
		session.setAttribute("url", "/showImages");
		List<Photo> photos = null;
		photos = photoDaoImpl.findAllPhotoByType(imageType);
		if (photos == null) {
			return UserError;
		}
		session.setAttribute("photos", photos);
		return "redirect:showImages.jsp";
	}

	// 查看图片
	@RequestMapping(value = "/showImage", method = RequestMethod.GET)
	public String showImage(@RequestParam("id") int id, HttpSession session) {
		session.setAttribute("url", "/showImage");
		Photo photo = null;
		photo = photoDaoImpl.findPhotoById(id);
		if (photo == null) {
			return UserError;
		}
		session.setAttribute("photo", photo);
		return "redirect:showImage.jsp";
	}

	@RequestMapping(value = "/createWaterMark", method = RequestMethod.POST)
	public String createWaterMark(String content, HttpSession session) {
		session.setAttribute("url", "/createWaterMark");
		Photo photo = null;
		photo = (Photo) session.getAttribute("photo");
		if (photo == null) {
			return UserError;
		}
		String photoWaterAddress = null;
		photoWaterAddress = photoUtil.addWaterMark(photo.getPhotoAddress(), content);
		if (photoWaterAddress == null) {
			return UserError;
		}
		photoDaoImpl.updatePhotoWaterAddress(photoWaterAddress, photo.getId());
		return "redirect:showWaterMarkPhoto.jsp";
	}

}
