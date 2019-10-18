package com.easypay.web.action;

import java.nio.charset.Charset;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import com.easypay.dao.TransactionDao;
import com.easypay.dao.TransactionDaoJdbc;
import com.easypay.jdbc.Database;
import com.easypay.models.Transaction;
import com.easypay.models.User;

public class TransactionAction {

	private Database db;
	private TransactionDao transactionDao;
	private User user;
	private String codeSecurite;
	

	


	public TransactionAction(Database db, User user) {
		super();
		this.db = db;
		this.user = user;
		transactionDao = new TransactionDaoJdbc(db);
	}




	public Transaction AddTransactionResponsable(HttpServletRequest request,User u) {
	
		
		Transaction t = new Transaction();
		GenerateCode();
		t.setNomExpediteur(request.getParameter("nom"));
		t.setPrenomExpediteur(request.getParameter("prenom"));
		t.setCinExpediteur(request.getParameter("cin"));
		t.setTelExpediteur(request.getParameter("tel"));
		
		t.setNomBeneficiare(request.getParameter("nomb"));
		t.setPrenomBeneficiare(request.getParameter("prenomb"));
		t.setTelBeneficiare(request.getParameter("telb"));
		t.setCinBeneficiare(request.getParameter("cinb"));
		
		t.setMontant(request.getParameter("montant"));
		t.setMontantrecu(request.getParameter("mr"));
		
		t.setAgenceEnvoie(u.getAgence());
		t.setCodeSecurite(getCodeSecurite());
		
		if (transactionDao.insert(t)>0) {
			Transaction tt  = transactionDao.select(transactionDao.getNumero());
			System.out.println(tt);
			return tt;
		}
		return null;
		
		
		
	}
	
	public void AddTransactionClient(HttpServletRequest request,User u) {
	
		
		Transaction t = new Transaction();
		t.setNomExpediteur(u.getNom());
		t.setPrenomExpediteur(u.getPrenom());
		t.setCinExpediteur(u.getCin());
		t.setTelExpediteur(u.getTel());
		
		t.setNomBeneficiare(request.getParameter("nom"));
		t.setPrenomBeneficiare(request.getParameter("prenom"));
		t.setTelBeneficiare(request.getParameter("tel"));
		t.setCinBeneficiare(request.getParameter("cin"));
		
		t.setMontant(request.getParameter("montant"));
		t.setMontantrecu(request.getParameter("mr"));
		
		t.setMethodeenvoi(request.getParameter("mmenvoi"));
		t.setMethoderecu(request.getParameter("mmrecu"));
		
		t.setAgenceEnvoie(u.getAgence());
		t.setCodeSecurite(getCodeSecurite());
		
		transactionDao.insert(t);
		
		
	}
	
	
	
	public Transaction AddPaiement(HttpServletRequest request) {
	
		
		
	
		String cin = request.getParameter("cin");
		String code = request.getParameter("code");

		
		Transaction t = transactionDao.select(cin, code);
		if(t!=null) {
			transactionDao.paye(cin, code);
			return t;
		}
		return null;
		
		
	}
	public String GenerateCode() {
		int lower = 1; int higher = 4; 
		
		
		int n1 = 48; // letter '1'
	    int n2 = 57; // letter 'F'
	    
		int n3 = 65; // letter 'A'
	    int n4 = 90; // letter 'Z'
	    
		int n5 = 97; // letter 'a'
	    int n6 = 122; // letter 'z'
	    
	    String code="";
	    for (int i = 0; i < 10; i++) {
	    	int random = (int)(Math.random() * (higher-lower)) + lower;
	    	System.out.println("Random : " + random);
	    	if(random==1) {
	    		code+=generateChar(n1,n2);
	    	}
	    	else if(random==2) {
	    		code+=generateChar(n3,n4);
	    	} 
	    	else if(random==3) {
	    		code+=generateChar(n5,n6);
	    	}
	    	
		}
	    
	    setCodeSecurite(code);
	    return code;
   
	}
	
	public String generateChar(int leftLimit,int rightLimit) {

	    int targetStringLength = 1;
	    Random random = new Random();
	    StringBuilder buffer = new StringBuilder(targetStringLength);
	    for (int i = 0; i < targetStringLength; i++) {
	        int randomLimitedInt = leftLimit + (int) 
	          (random.nextFloat() * (rightLimit - leftLimit + 1));
	        buffer.append((char) randomLimitedInt);
	    }
	    String generatedString = buffer.toString();
	 
	    return generatedString;
	}




	public String getCodeSecurite() {
		return codeSecurite;
	}




	public void setCodeSecurite(String codeSecurite) {
		this.codeSecurite = codeSecurite;
	}
	
	public List<Transaction> select(){
		return transactionDao.selectAll();
	}
	
	

}
