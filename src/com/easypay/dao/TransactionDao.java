package com.easypay.dao;

import java.util.List;


import com.easypay.models.Transaction;


public interface TransactionDao {

	public Transaction select(String id);
	public Transaction select(String cin,String code);
	public List<Transaction> selectAll();
	public int insert(Transaction t);
	public int update(Transaction t);
	public int delete(Transaction t);
	public int paye(String cin,String code);
	public String getNumero();
	
}
