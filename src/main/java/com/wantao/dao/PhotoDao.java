package com.wantao.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.wantao.bean.Photo;

/*
 *@author:wantao
 *@time:Jul 12, 2018 8:49:19 PM
 *@description:
 */
@Repository
public interface PhotoDao {
	//增加
	public void addPhoto(Photo photo);
	//查询
	public List<Photo> findAllPhotoByType(String photoType);
	public Photo findPhotoById(int id);
	//修改
	public void updatePhotoWaterAddress(@Param("photoWaterAddress")String photoWaterAddress,@Param("id")int id);

}
