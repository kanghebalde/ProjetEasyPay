package com.easypay.models;

public class User {

	private String id;
	private String username;
	private String nom;
	private String prenom;
	private String mdp;
	private String tel;
	private String email;
	private String cin;
	private String adresse;
	private String agence;
	private String role;
	private String approuve;
	
	public User() {
		// TODO Auto-generated constructor stub
	}






	public User(String id, String username, String nom, String prenom, String mdp, String tel, String email, String cin,
			String adresse, String agence, String role, String approuve) {
		super();
		this.id = id;
		this.username = username;
		this.nom = nom;
		this.prenom = prenom;
		this.mdp = mdp;
		this.tel = tel;
		this.email = email;
		this.cin = cin;
		this.adresse = adresse;
		this.agence = agence;
		this.role = role;
		this.approuve = approuve;
	}






	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getMdp() {
		return mdp;
	}

	public void setMdp(String mdp) {
		this.mdp = mdp;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCin() {
		return cin;
	}

	public void setCin(String cin) {
		this.cin = cin;
	}

	public String getAdresse() {
		return adresse;
	}

	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	public String getAgence() {
		return agence;
	}

	public void setAgence(String agence) {
		this.agence = agence;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}



	public String getId() {
		return id;
	}



	public void setId(String id) {
		this.id = id;
	}



	public String getApprouve() {
		return approuve;
	}






	public void setApprouve(String approuve) {
		this.approuve = approuve;
	}






	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", nom=" + nom + ", prenom=" + prenom + ", mdp=" + mdp
				+ ", tel=" + tel + ", email=" + email + ", cin=" + cin + ", adresse=" + adresse + ", agence=" + agence
				+ ", role=" + role + ", approuve=" + approuve + "]";
	}





	
	

}
