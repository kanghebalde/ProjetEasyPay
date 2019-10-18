package com.easypay.dao;

import java.util.List;


import com.easypay.models.User;

public interface UserDao {
	public User select(String id);
	public User selectUsername(String u);
	public List<User> selectAll();
	public int insert(User t);
	public int update(User t);
	public int delete(User t);
	public int approuve(String id);
	public int affecter(String id,String agence);
	public List<User> selectResponsableNonAffecte();
	public List<User> selectResponsable();
	public List<User> selectUserByAgence(String agence);
}
