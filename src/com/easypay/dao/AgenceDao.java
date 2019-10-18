package com.easypay.dao;

import java.util.List;

import com.easypay.models.Agence;
import com.easypay.models.User;

public interface AgenceDao {
	public Agence select(String id);
	public List<Agence> selectAll();
	public int insert(Agence a);
	public int update(Agence a);
	public int delete(Agence t);
}
