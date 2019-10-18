package com.easypay.dao;

import java.util.List;
import java.util.Vector;

import com.easypay.jdbc.Database;
import com.easypay.models.User;




public class UserDaoJdbc implements UserDao{
	
	private Database db;
	
	

	public UserDaoJdbc(Database db) {
		super();
		this.db = db;
	}

	@Override
	public User select(String id) {
		return mapping(db.selectLike("users", "id", id)).get(0);
	}
	@Override
	public User selectUsername(String u) {
		 List<User> list = selectAll();
		 for (User user : list) {
			if(user.getUsername().equals(u)) return user;
		}
		return null;
	}
	

	@Override
	public List<User> selectAll() {
		return mapping(db.select("users"));
	}

	
	
	@Override
	public int insert(User u) {
		return(db.insert("users",LastidUser(),u.getUsername(),u.getNom(),u.getPrenom(),u.getMdp(),u.getTel(),u.getEmail(),u.getCin(),u.getAdresse(),u.getAgence(),u.getRole(),u.getApprouve() ));
		
	}

	@Override
	public int update(User u) {
		return(db.update("users",u.getId(),u.getUsername(),u.getNom(),u.getPrenom(),u.getMdp(),u.getTel(),u.getEmail(),u.getCin(),u.getAdresse(),u.getAgence(),u.getRole(),u.getApprouve() ));
		
	}

	@Override
	public int delete(User t) {
		return (db.delete("users", "id", t.getId()));
	}

	@Override
	public int approuve(String id) {
		User u = select(id);
		u.setApprouve("oui");
		return update(u);
	}

	@Override
	public int affecter(String id, String agence) {
		User u = select(id);
		u.setAgence(agence);
		System.out.println(u);
		return update(u);
	}
	
	public List<User> mapping (String[][] data ){
		List<User> res = new Vector<>();
		for (int i = 1; i < data.length; i++) {
			res.add(new User(data[i][0], data[i][1], data[i][2], data[i][3], data[i][4], data[i][5], data[i][6], data[i][7], data[i][8], data[i][9], data[i][10], data[i][11]));
		}
		
		return res;
	}

	
	public int LastidUser() {
		int num;
		List<User> users = new Vector<>();
		users = selectAll();
	    num = users.size()+1;
		return num;
	}

	@Override
	public List<User> selectResponsableNonAffecte() {
		List<User> list = selectAll();
		List<User> res = new Vector<>();
		for (User user : list) {
			if(user.getRole().equals("Responsable") && user.getAgence().equals("Aucun")) {
				res.add(user);
			}
		}
		return res;
		
	}

	@Override
	public List<User> selectResponsable() {
		List<User> list = selectAll();
		List<User> res = new Vector<>();
		for (User user : list) {
			if(user.getRole().equals("Responsable") ) {
				res.add(user);
			}
		}
		return res;
	}

	@Override
	public List<User> selectUserByAgence(String agence) {
		List<User> list = selectAll();
		List<User> res = new Vector<>();
		for (User user : list) {
			if(user.getRole().equals("Client") && user.getAgence().equals(agence)) {
				res.add(user);
			}
		}
		return res;
	}
}
