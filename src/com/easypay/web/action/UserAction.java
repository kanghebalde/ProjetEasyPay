package com.easypay.web.action;

import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;


import com.easypay.dao.UserDao;
import com.easypay.dao.UserDaoJdbc;
import com.easypay.jdbc.Database;
import com.easypay.models.Agence;
import com.easypay.models.User;

public class UserAction {



	private Database db;
	private UserDao userDao;
	
	public UserAction(Database db) {
		super();
		this.db = db;
		userDao = new UserDaoJdbc(db);
	}




	public void AddResponsable(HttpServletRequest request) {
	
		User a = new User();
		a.setNom(request.getParameter("nom"));
		a.setPrenom(request.getParameter("prenom"));
		a.setTel(request.getParameter("tel"));
		a.setEmail(request.getParameter("email"));
		a.setAdresse(request.getParameter("adresse"));
		a.setUsername(request.getParameter("login"));
		a.setMdp(request.getParameter("pass"));
		a.setCin(request.getParameter("cin"));
		a.setRole("Responsable");
		a.setAgence("Aucun");
		a.setApprouve("oui");

		userDao.insert(a);
		
	}
	
	public void AddClient(HttpServletRequest request) {
		
		User a = new User();
		a.setNom(request.getParameter("nom"));
		a.setPrenom(request.getParameter("prenom"));
		a.setTel(request.getParameter("tel"));
		a.setEmail(request.getParameter("email"));
		a.setAdresse(request.getParameter("adresse"));
		a.setUsername(request.getParameter("login"));
		a.setMdp(request.getParameter("pass"));
		a.setCin(request.getParameter("cin"));
		a.setRole("Client");
		a.setAgence(request.getParameter("agence"));
		a.setApprouve("non");
		System.out.println("Userrrr : " + a);
		userDao.insert(a);
		
	}
	
	public List<User> selectResponsableNonAffecte() {
		return userDao.selectResponsableNonAffecte();
	}


	public List<User> selectClient(String agence) {
		return userDao.selectUserByAgence(agence);
	}
	
	public void approuverCleint(String uri) {
		StringTokenizer st = new StringTokenizer(uri, "$");
		String i = st.nextToken();
		String id = st.nextToken();
		System.out.println("id = "+id);
		userDao.approuve(id);	
	}
	

	public void Affectation(HttpServletRequest request) {
			
		String id = request.getParameter("nomres");
		String agence = request.getParameter("nomagence");
		userDao.affecter(id, agence);

	}
	
	
	public User Login(HttpServletRequest request) {
		String username = request.getParameter("username1");
		String pass = request.getParameter("password");
		System.out.println("user" + username);
		System.out.println("user" + pass);
		User u = userDao.selectUsername(username);
		if (u.getMdp().equals(pass)) {
			System.out.println("useremail  " + u);
			return u;
		}
		System.out.println("uitiutiutiut : " + u);
		return null;
	}
}
