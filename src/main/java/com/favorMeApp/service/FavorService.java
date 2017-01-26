package com.favorMeApp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.favorMeApp.model.Favor;
import com.favorMeApp.model.FavorDAO;

@Service("favorService")
public class FavorService {
	private FavorDAO favorDao;

	@Autowired
	public void setFavorDao(FavorDAO favorDao) {
		this.favorDao = favorDao;
	}

	public List<Favor> getCurrent() {
		return favorDao.getFavors();
	}

	public void create(Favor favor) {
		favorDao.create(favor);

	}

}
