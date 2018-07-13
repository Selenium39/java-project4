package com.wantao.daoImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wantao.bean.Photo;
import com.wantao.dao.PhotoDao;

/*
 *@author:wantao
 *@time:Jul 12, 2018 9:36:51 PM
 *@description:
 */
@Service
public class PhotoDaoImpl implements PhotoDao {
	@Autowired
	PhotoDao photoDao;

	@Override
	public void addPhoto(Photo photo) {
		photoDao.addPhoto(photo);

	}

	@Override
	public List<Photo> findAllPhotoByType(String photoType) {
		return photoDao.findAllPhotoByType(photoType);
	}

	@Override
	public Photo findPhotoById(int id) {
		return photoDao.findPhotoById(id);
	}

	@Override
	public void updatePhotoWaterAddress(String photoWaterAddress, int id) {
           photoDao.updatePhotoWaterAddress(photoWaterAddress, id);		
	}

}
