package com.easypay.models;

public class Transaction {

	private String numero;
	private String nomExpediteur;
	private String prenomExpediteur;
	private String cinExpediteur;
	private String telExpediteur;
	private String nomBeneficiare;
	private String prenomBeneficiare;
	private String cinBeneficiare;
	private String telBeneficiare;
	private String codeSecurite;
	private String montant;
	private String montantrecu;
	private String date;
	private String agenceEnvoie;
	private String agenceRecu;
	private String paye;
	private String methodeenvoi;
	private String methoderecu;
	
	public Transaction() {
		this.numero = "";
		this.nomExpediteur = "";
		this.prenomExpediteur = "";
		this.cinExpediteur = "";
		this.telExpediteur = "";
		this.nomBeneficiare = "";
		this.prenomBeneficiare = "";
		this.cinBeneficiare = "";
		this.telBeneficiare = "";
		this.codeSecurite = "";
		this.montant = "";
		this.montantrecu = "";
		this.date = "";
		this.agenceEnvoie = "";
		this.agenceRecu = "";
		this.paye = "non";
		this.methodeenvoi = "Agence";
		this.methoderecu = "Agence";
	}







	public Transaction(String numero, String nomExpediteur, String prenomExpediteur, String cinExpediteur,
			String telExpediteur, String nomBeneficiare, String prenomBeneficiare, String cinBeneficiare,
			String telBeneficiare, String codeSecurite, String montant, String montantrecu, String date,
			String agenceEnvoie, String agenceRecu, String paye, String methodeenvoi, String methoderecu) {
		super();
		this.numero = numero;
		this.nomExpediteur = nomExpediteur;
		this.prenomExpediteur = prenomExpediteur;
		this.cinExpediteur = cinExpediteur;
		this.telExpediteur = telExpediteur;
		this.nomBeneficiare = nomBeneficiare;
		this.prenomBeneficiare = prenomBeneficiare;
		this.cinBeneficiare = cinBeneficiare;
		this.telBeneficiare = telBeneficiare;
		this.codeSecurite = codeSecurite;
		this.montant = montant;
		this.montantrecu = montantrecu;
		this.date = date;
		this.agenceEnvoie = agenceEnvoie;
		this.agenceRecu = agenceRecu;
		this.paye = paye;
		this.methodeenvoi = methodeenvoi;
		this.methoderecu = methoderecu;
	}







	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	public String getNomExpediteur() {
		return nomExpediteur;
	}

	public void setNomExpediteur(String nomExpediteur) {
		this.nomExpediteur = nomExpediteur;
	}

	public String getPrenomExpediteur() {
		return prenomExpediteur;
	}

	public void setPrenomExpediteur(String prenomExpediteur) {
		this.prenomExpediteur = prenomExpediteur;
	}

	public String getCinExpediteur() {
		return cinExpediteur;
	}

	public void setCinExpediteur(String cinExpediteur) {
		this.cinExpediteur = cinExpediteur;
	}

	public String getTelExpediteur() {
		return telExpediteur;
	}

	public void setTelExpediteur(String telExpediteur) {
		this.telExpediteur = telExpediteur;
	}

	public String getNomBeneficiare() {
		return nomBeneficiare;
	}

	public void setNomBeneficiare(String nomBeneficiare) {
		this.nomBeneficiare = nomBeneficiare;
	}

	public String getPrenomBeneficiare() {
		return prenomBeneficiare;
	}

	public void setPrenomBeneficiare(String prenomBeneficiare) {
		this.prenomBeneficiare = prenomBeneficiare;
	}

	public String getCinBeneficiare() {
		return cinBeneficiare;
	}

	public void setCinBeneficiare(String cinBeneficiare) {
		this.cinBeneficiare = cinBeneficiare;
	}

	public String getTelBeneficiare() {
		return telBeneficiare;
	}

	public void setTelBeneficiare(String telBeneficiare) {
		this.telBeneficiare = telBeneficiare;
	}

	public String getCodeSecurite() {
		return codeSecurite;
	}

	public void setCodeSecurite(String codeSecurite) {
		this.codeSecurite = codeSecurite;
	}

	public String getMontant() {
		return montant;
	}

	public void setMontant(String montant) {
		this.montant = montant;
	}

	public String getMontantrecu() {
		return montantrecu;
	}

	public void setMontantrecu(String montantrecu) {
		this.montantrecu = montantrecu;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getAgenceEnvoie() {
		return agenceEnvoie;
	}

	public void setAgenceEnvoie(String agenceEnvoie) {
		this.agenceEnvoie = agenceEnvoie;
	}

	public String getAgenceRecu() {
		return agenceRecu;
	}

	public void setAgenceRecu(String agenceRecu) {
		this.agenceRecu = agenceRecu;
	}

	public String getPaye() {
		return paye;
	}

	public void setPaye(String paye) {
		this.paye = paye;
	}







	public String getMethodeenvoi() {
		return methodeenvoi;
	}







	public void setMethodeenvoi(String methodeenvoi) {
		this.methodeenvoi = methodeenvoi;
	}







	public String getMethoderecu() {
		return methoderecu;
	}







	public void setMethoderecu(String methoderecu) {
		this.methoderecu = methoderecu;
	}







	@Override
	public String toString() {
		return "Transaction [numero=" + numero + ", nomExpediteur=" + nomExpediteur + ", prenomExpediteur="
				+ prenomExpediteur + ", cinExpediteur=" + cinExpediteur + ", telExpediteur=" + telExpediteur
				+ ", nomBeneficiare=" + nomBeneficiare + ", prenomBeneficiare=" + prenomBeneficiare
				+ ", cinBeneficiare=" + cinBeneficiare + ", telBeneficiare=" + telBeneficiare + ", codeSecurite="
				+ codeSecurite + ", montant=" + montant + ", montantrecu=" + montantrecu + ", date=" + date
				+ ", agenceEnvoie=" + agenceEnvoie + ", agenceRecu=" + agenceRecu + ", paye=" + paye + ", methodeenvoi="
				+ methodeenvoi + ", methoderecu=" + methoderecu + "]";
	}

	

	
	
	
	
	

}
