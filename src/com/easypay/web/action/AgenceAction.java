package com.easypay.web.action;

import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;

import com.easypay.dao.AgenceDao;
import com.easypay.dao.AgenceDaoJdbc;
import com.easypay.dao.UserDao;
import com.easypay.dao.UserDaoJdbc;
import com.easypay.jdbc.Database;
import com.easypay.models.Agence;
import com.easypay.models.User;



public class AgenceAction {

	
	private Database db;
	private AgenceDao agenceDao;
	private UserDao userDao;
	
	public AgenceAction(Database db) {
		super();
		this.db = db;
		agenceDao = new AgenceDaoJdbc(db);
		userDao = new UserDaoJdbc(db);
	}




	public void AddAgence(HttpServletRequest request) {
	
		Agence a = new Agence();
		a.setNomagence(request.getParameter("nom"));
		a.setTel(request.getParameter("tel"));
		a.setTel2(request.getParameter("tel2"));
		a.setFax(request.getParameter("fax"));
		a.setEmail(request.getParameter("email"));
		a.setAdresse(request.getParameter("us2-address"));
		a.setVille(request.getParameter("ville"));
		a.setRayon(request.getParameter("us2-radius"));
		a.setLatitude(request.getParameter("us2-lat"));
		a.setLongitude(request.getParameter("us2-lon"));
		a.setResponsable("Aucun");
		agenceDao.insert(a);
		
	}
	
	
	public Agence UploadAgence(String url) {
		
		Agence a = new Agence();
		StringTokenizer st = new StringTokenizer(url, "$");
		String i = st.nextToken();
		String id = st.nextToken();
		System.out.println("id = "+id);
		a=agenceDao.select(id);
		
		return a;
		
	}
	public void ModifierAgence(HttpServletRequest request) {
		
		Agence a = new Agence();
		a.setNomagence(request.getParameter("nom"));
		a.setTel(request.getParameter("tel"));
		a.setTel2(request.getParameter("tel2"));
		a.setFax(request.getParameter("fax"));
		a.setEmail(request.getParameter("email"));
		a.setAdresse(request.getParameter("us2-address"));
		a.setVille(request.getParameter("ville"));
		a.setRayon(request.getParameter("us2-radius"));
		a.setLatitude(request.getParameter("us2-lat"));
		a.setLongitude(request.getParameter("us2-lon"));
		a.setResponsable(request.getParameter("responsable"));
		a.setId(request.getParameter("id"));
		agenceDao.update(a);
		
		
	}
	
	public List<Agence> SelectAll() {
		return agenceDao.selectAll();
	}
	
	
	public void DeleteAgence(String uri) {
		Agence a = new Agence();
		StringTokenizer st = new StringTokenizer(uri, "$");
		String i = st.nextToken();
		String id = st.nextToken();
		System.out.println("id = "+id);
		a=agenceDao.select(id);
		agenceDao.delete(a);
		
		
	}
	
	public void changerResponsable(HttpServletRequest request) {
		
		
		String id = request.getParameter("nomres");
		String agence = request.getParameter("nomagence");
		System.out.println("dfgggggggggggggggggggggggggggg");
		System.out.println(agence);
		List<Agence> a = agenceDao.selectAll();
		for (Agence agence2 : a) {
			if(agence2.getNomagence().equals(agence)) {
				System.out.println(agence2);
				Agence aa = agence2;
				User u = userDao.select(id);
				String name = u.getNom() + " " + u.getPrenom();
				aa.setResponsable(name);
				agenceDao.update(aa);
			}
		}
	}
	
	public Agence getAgence(String name) {
		 List<Agence>  list = agenceDao.selectAll();
		 for (Agence agence : list) {
			if(agence.getNomagence().equals(name)) return agence;
		}
		return null;
	}
}
