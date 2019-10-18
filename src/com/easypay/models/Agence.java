package com.easypay.models;

public  class Agence {

	private String id;
	private String nomagence;
	private String tel;
	private String tel2;
	private String fax;
	private String email;
	private String adresse;
	private String ville;
	private String rayon;
	private String Latitude;
	private String Longitude;
	private String responsable;
	
	public Agence() {
		
	}





	public Agence(String id, String nomagence, String tel, String tel2, String fax, String email, String adresse,
			String ville, String rayon, String latitude, String longitude, String responsable) {
		super();
		this.id = id;
		this.nomagence = nomagence;
		this.tel = tel;
		this.tel2 = tel2;
		this.fax = fax;
		this.email = email;
		this.adresse = adresse;
		this.ville = ville;
		this.rayon = rayon;
		Latitude = latitude;
		Longitude = longitude;
		this.responsable = responsable;
	}





	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getNomagence() {
		return nomagence;
	}


	public void setNomagence(String nomagence) {
		this.nomagence = nomagence;
	}


	public String getTel() {
		return tel;
	}


	public void setTel(String tel) {
		this.tel = tel;
	}


	public String getTel2() {
		return tel2;
	}


	public void setTel2(String tel2) {
		this.tel2 = tel2;
	}


	public String getFax() {
		return fax;
	}


	public void setFax(String fax) {
		this.fax = fax;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getAdresse() {
		return adresse;
	}


	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}


	public String getVille() {
		return ville;
	}


	public void setVille(String ville) {
		this.ville = ville;
	}


	public String getRayon() {
		return rayon;
	}


	public void setRayon(String rayon) {
		this.rayon = rayon;
	}


	public String getLatitude() {
		return Latitude;
	}


	public void setLatitude(String latitude) {
		Latitude = latitude;
	}


	public String getLongitude() {
		return Longitude;
	}


	public void setLongitude(String longitude) {
		Longitude = longitude;
	}





	public String getResponsable() {
		return responsable;
	}





	public void setResponsable(String responsable) {
		this.responsable = responsable;
	}





	@Override
	public String toString() {
		return "Agence [id=" + id + ", nomagence=" + nomagence + ", tel=" + tel + ", tel2=" + tel2 + ", fax=" + fax
				+ ", email=" + email + ", adresse=" + adresse + ", ville=" + ville + ", rayon=" + rayon + ", Latitude="
				+ Latitude + ", Longitude=" + Longitude + ", responsable=" + responsable + "]";
	}



	
	

}
