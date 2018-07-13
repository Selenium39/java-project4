package com.wantao.test;

import java.awt.Color;
import java.awt.Font;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.GregorianCalendar;
import java.util.List;

import javax.imageio.ImageIO;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.wantao.bean.Photo;
import com.wantao.daoImpl.PhotoDaoImpl;
import com.wantao.util.PhotoUtil;

/*
 *@author:wantao
 *@time:Jul 10, 2018 10:31:43 PM
 *@description:
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "classpath:spring/spring.xml" })
public class ImageTest {
	// 测试获取照片信息
	// @Test
	public void test() throws FileNotFoundException, IOException {
		File picture = new File("/home/wantao/user/src/eclipse/java-project4/src/main/webapp/images/1255989109.jpg");
		BufferedImage image = ImageIO.read(new FileInputStream(picture));
		System.out.println(picture.length());
		System.out.println(image.getWidth());
		System.out.println(image.getHeight());
		GregorianCalendar calendar = new GregorianCalendar();
		// 取出当前的年，月，日
		int year = calendar.get(calendar.YEAR);
		// 月的数值加1，使之变成习惯的月份大小（1～12月）
		int month = calendar.get(calendar.MONTH) + 1;
		int today = calendar.get(calendar.DAY_OF_MONTH);
		String date = year + "/" + month + "/" + today;
		// 输出当前的年,月,日及星期的格式样本
		System.out.println(date);
		String[] realDate = date.split("/");
		for (String time : realDate) {
			System.out.println(time);
		}
	}

	// 测试生成略缩图
	// @Test
	public void test1() throws IOException {
		String photoPath = "/home/wantao/user/src/eclipse/java-project4/src/main/webapp/images/1044411922.jpg";
		PhotoUtil phtoUtil = new PhotoUtil();
		PhotoUtil.createSmallPhoto(photoPath);

	}

	// 测试生成水印
	// @Test
	public void test2() {
		PhotoUtil phtoUtil = new PhotoUtil();
		String photoPath = "/home/wantao/user/src/eclipse/java-project4/src/main/webapp/images/1044411922.jpg";
		String printPhotoPath = "/home/wantao/user/src/eclipse/java-project4/src/main/webapp/images/1044411922_print.jpg";
		Color color = Color.RED;
		Font font = new Font("微软雅黑", Font.PLAIN, 35);
		// phtoUtil.addWaterMark(photoPath, printPhotoPath, "万涛");
	}

	// 测试获取图片信息
	// @Test
	public void test3() throws FileNotFoundException, IOException {
		String photoPath = "/home/wantao/user/src/eclipse/java-project4/src/main/webapp/images/3.jpg";
		PhotoUtil photoUtil = new PhotoUtil();
		photoUtil.getPhotoInf(photoPath);
	}

	@Autowired
	PhotoDaoImpl photoDaoImpl;

	// 测试数据库增加图片
	// @Test
	public void test4() {
		Photo photo = new Photo();
		photo.setPhotoAddress("123");
		photo.setPhotoHeight("123");
		photo.setPhotoName("123");
		photo.setPhotoSize("123");
		photo.setPhotoTime("1234");
		photo.setPhotoType("123");
		photo.setPhotoWidth("123");
		photo.setUserName("123");
		photo.setUserPhotoName("123");
		photoDaoImpl.addPhoto(photo);

	}

	// 测试通过分类查找图片
	// @Test
	public void test5() {
		List<Photo> photos = photoDaoImpl.findAllPhotoByType("BEAUTIFUL");
		for (Photo photo : photos) {
			System.out.println(photo.toString());
		}
	}

	// 测试通过id查找图片
	// @Test
	public void test6() {
		Photo photo = photoDaoImpl.findPhotoById(10);
		System.out.println(photo.toString());
	}

}
