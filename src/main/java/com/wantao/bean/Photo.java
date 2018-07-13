package com.wantao.bean;

/*
 *@author:wantao
 *@time:Jul 10, 2018 6:27:16 PM
 *@description:
 */
public class Photo {
	private int id;
	private String photoName;// 上传时照片名
	private String photoSize;
	private String photoType;
	private String photoWidth;
	private String photoHeight;
	private String photoTime;
	private String photoAddress;
	private String userName;
	private String printAddress;
	private String smallPhotoAddress;
	private String userPhotoName;// 用户自定义照片名

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPhotoName() {
		return photoName;
	}

	public void setPhotoName(String photoName) {
		this.photoName = photoName;
	}

	public String getPhotoSize() {
		return photoSize;
	}

	public void setPhotoSize(String photoSize) {
		this.photoSize = photoSize;
	}

	public String getPhotoType() {
		return photoType;
	}

	public void setPhotoType(String photoType) {
		this.photoType = photoType;
	}

	public String getPhotoWidth() {
		return photoWidth;
	}

	public void setPhotoWidth(String photoWidth) {
		this.photoWidth = photoWidth;
	}

	public String getPhotoHeight() {
		return photoHeight;
	}

	public void setPhotoHeight(String photoHeight) {
		this.photoHeight = photoHeight;
	}

	public String getPhotoTime() {
		return photoTime;
	}

	public void setPhotoTime(String photoTime) {
		this.photoTime = photoTime;
	}

	public String getPhotoAddress() {
		return photoAddress;
	}

	public void setPhotoAddress(String photoAddress) {
		this.photoAddress = photoAddress;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPrintAddress() {
		return printAddress;
	}

	public void setPrintAddress(String printAddress) {
		this.printAddress = printAddress;
	}

	public String getsmallPhotoAddress() {
		return smallPhotoAddress;
	}

	public void setsmallPhotoAddress(String smallPhotoAddress) {
		this.smallPhotoAddress = smallPhotoAddress;
	}

	public String getUserPhotoName() {
		return userPhotoName;
	}

	public void setUserPhotoName(String userPhotoName) {
		this.userPhotoName = userPhotoName;
	}

	@Override
	public String toString() {
		return "Photo [id=" + id + ", photoName=" + photoName + ", photoSize=" + photoSize + ", photoWidth="
				+ photoWidth + ", photoHeight=" + photoHeight + ", photoTIme=" + photoTime + ", photoAddress="
				+ photoAddress + ", userName=" + userName + ", printAddress=" + printAddress + ", smallPhotoAddress="
				+ smallPhotoAddress + ", userPhotoName=" + userPhotoName + "]";
	}

}
