package com.easypay.dao;

import java.util.List;
import java.util.Vector;

import com.easypay.jdbc.Database;
import com.easypay.models.Agence;


public class AgenceDaoJdbc implements AgenceDao {

	
	private Database db;
	
	

	public AgenceDaoJdbc(Database db) {
		super();
		this.db = db;
	}
	


	@Override
	public Agence select(String id) {
		return mapping(db.selectLike("agence", "id", id)).get(0);
	}

	@Override
	public List<Agence> selectAll() {
		return mapping(db.select("agence"));
	}


	@Override
	public int insert(Agence a) {
		return(db.insert("agence",LastidAgence(),a.getNomagence(),a.getTel(),a.getTel2(),a.getFax(),a.getEmail(),a.getAdresse(),a.getVille(),a.getRayon(),a.getLatitude(),a.getLongitude(),a.getResponsable()			
				));
	}

	@Override
	public int update(Agence a) {
		return(db.update("agence",a.getId(),a.getNomagence(),a.getTel(),a.getTel2(),a.getFax(),a.getEmail(),a.getAdresse(),a.getVille(),a.getRayon(),a.getLatitude(),a.getLongitude(),a.getResponsable()			
				));
	}

	@Override
	public int delete(Agence t) {
		return (db.delete("agence", "id", t.getId()));
	}
	
	public List<Agence> mapping (String[][] data ){
		List<Agence> res = new Vector<>();
		for (int i = 1; i < data.length; i++) {
			res.add(new Agence(data[i][0], data[i][1], data[i][2], data[i][3], data[i][4], data[i][5], data[i][6], data[i][7], data[i][8], data[i][9], data[i][10], data[i][11]));
		}
		
		return res;
	}

	
	public int LastidAgence() {
		int num;
		List<Agence> users = new Vector<>();
		users = selectAll();
	    num = users.size()+1;
		return num;
	}

}
