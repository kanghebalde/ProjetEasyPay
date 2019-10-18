package com.easypay.dao;

import java.util.Calendar;
import java.util.List;
import java.util.Vector;

import com.easypay.jdbc.Database;
import com.easypay.models.Transaction;


public class TransactionDaoJdbc implements TransactionDao{

	private Database db;
	private String numero;
	

	public TransactionDaoJdbc(Database db) {
		super();
		this.db = db;
	}
	

	@Override
	public Transaction select(String id) {
		return mapping(db.selectLike("transaction", "numero", id)).get(0);
	}

	@Override
	public Transaction select(String cin, String code) {
		List<Transaction> list = selectAll();
		for (Transaction transaction : list) {
			if(transaction.getCinBeneficiare().equals(cin) && transaction.getCodeSecurite().equals(code) && transaction.getPaye().equals("non")) {
				return transaction;
			}
		}
		return null;
	}

	@Override
	public List<Transaction> selectAll() {
		return mapping(db.select("transaction"));
	}

	

	@Override
	public int insert(Transaction t) {
		return(db.insert("transaction",LastNumTransaction(),t.getNomExpediteur(),t.getPrenomExpediteur(),t.getCinExpediteur(),t.getTelExpediteur(),
				t.getNomBeneficiare(),t.getPrenomBeneficiare(),t.getCinBeneficiare(),t.getTelBeneficiare(),t.getCodeSecurite(),t.getMontant(),t.getMontantrecu(),
				DateNow(),t.getAgenceEnvoie(),t.getAgenceRecu(),t.getPaye(),t.getMethodeenvoi()	,t.getMethoderecu()			
				));
	}

	@Override
	public int update(Transaction t) {
		return(db.update("transaction",t.getNumero(),t.getNomExpediteur(),t.getPrenomExpediteur(),t.getCinExpediteur(),t.getTelExpediteur(),
				t.getNomBeneficiare(),t.getPrenomBeneficiare(),t.getCinBeneficiare(),t.getTelBeneficiare(),t.getCodeSecurite(),t.getMontant(),t.getMontantrecu(),
				t.getDate(),t.getAgenceEnvoie(),t.getAgenceRecu(),t.getPaye(),t.getMethodeenvoi()	,t.getMethoderecu()					
				));
	}

	@Override
	public int delete(Transaction t) {
		return (db.delete("transaction", "numero", t.getNumero()));
	}

	@Override
	public int paye(String cin, String code) {
		Transaction t = select(cin, code);
		if(t!=null) {
			t.setPaye("oui");
			return update(t);
		}
		return -1;
	}
	
	public List<Transaction> mapping (String[][] data ){
		List<Transaction> res = new Vector<>();
		for (int i = 1; i < data.length; i++) {
			res.add(new Transaction(data[i][0], data[i][1], data[i][2], data[i][3], data[i][4], data[i][5], data[i][6], data[i][7], data[i][8], data[i][9], data[i][10], data[i][11], data[i][12], data[i][13], data[i][14], data[i][15], data[i][16], data[i][17]));
		}
		
		return res;
	}
	
	public int LastNumTransaction() {
		int num;
		List<Transaction> users = new Vector<>();
		users = selectAll();
	    num = users.size()+1;
	    setNumero(num+"");
		return num;
	}
	
	public String DateNow() {
		Calendar rightNow = Calendar.getInstance();
		String datenow = "" + rightNow.get(Calendar.DATE)+ "/" +rightNow.get(Calendar.MONTH)+1+ "/" +rightNow.get(Calendar.YEAR) ;
		return datenow;
	}


	public String getNumero() {
		return numero;
	}


	public void setNumero(String numero) {
		this.numero = numero;
	}
	
	

}
