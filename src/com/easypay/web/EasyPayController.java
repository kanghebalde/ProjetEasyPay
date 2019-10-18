package com.easypay.web;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import com.easypay.jdbc.DataSource;
import com.easypay.jdbc.Database;
import com.easypay.jdbc.MySQLDataSource;
import com.easypay.models.Agence;
import com.easypay.models.Transaction;
import com.easypay.models.User;
import com.easypay.web.action.AgenceAction;
import com.easypay.web.action.TransactionAction;
import com.easypay.web.action.UserAction;



/**
 * Servlet implementation class EasyPayController
 */
@WebServlet({ "/EasyPayController", "/easypay/*" })
public class EasyPayController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Database db;
	private DataSource ds;
	private User u;
	private AgenceAction agenceAction;
	private TransactionAction transactionAction;
	private UserAction userAction;
	private Agence a;
	
	
	public void init(ServletConfig config) throws ServletException {
		ds = new MySQLDataSource("localhost","easypay","root","root");
		db = new Database(ds);
		u=null;
		agenceAction = new AgenceAction(db);
		transactionAction = new TransactionAction(db, u);
		userAction = new UserAction(db);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		System.out.println(uri);
		String view = "/view/Error.jsp";
		
		request.setAttribute("user",u );
		if (uri.endsWith("/AjouterAgence")) {
			view = "/view/AjouterAgence.jsp";
			request.getRequestDispatcher(view).forward(request,response);
		}
		
		else if (uri.endsWith("/addAgence")) {
			agenceAction.AddAgence(request);
			request.setAttribute("listagence",agenceAction.SelectAll());
			view = "/view/ListeAgences.jsp";
			request.getRequestDispatcher(view).forward(request,response);	
		}
		
		else if (uri.endsWith("/NouvelleTransactionResponsable")) {
			view = "/view/NouvelleTransactionResponsable.jsp";
			request.getRequestDispatcher(view).forward(request,response);	
		}
		
		else if (uri.endsWith("/addTransactionResponsable")) {
			Transaction t = transactionAction.AddTransactionResponsable(request, u);
			request.setAttribute("recu",t );
			request.setAttribute("agence",a );
			request.setAttribute("user",u );
			view = "/view/RecuTransaction.jsp";
			request.getRequestDispatcher(view).forward(request,response);	
		}
		
		else if (uri.endsWith("/NouvelleTransactionClient")) {
			
			if(u!=null) {
				request.setAttribute("codess",transactionAction.GenerateCode() );
				view = "/view/NouvelleTransactionClient.jsp";
				request.getRequestDispatcher(view).forward(request,response);
			}
			else {
				
			request.setAttribute("listagence",agenceAction.SelectAll());
			view = "/view/login.jsp";
			request.getRequestDispatcher(view).forward(request,response);	
			
			}
	
		}
		
		
		else if (uri.endsWith("/addTransactionClient")) {
			
			transactionAction.AddTransactionClient(request,u);
			request.setAttribute("codess",transactionAction.GenerateCode() );
			view = "/view/NouvelleTransactionClient.jsp";
			request.getRequestDispatcher(view).forward(request,response);	
		}
		
		else if (uri.endsWith("/HistoriqueTransaction")) {
			request.setAttribute("user",u );
			request.setAttribute("agence",a );
			request.setAttribute("listtransaction",transactionAction.select() );
			view = "/view/HistoriqueTransaction.jsp";
			request.getRequestDispatcher(view).forward(request,response);	
		}
		
		
		else if (uri.endsWith("/Paiement")) {
			request.setAttribute("user",u );
			request.setAttribute("agence",a );
			view = "/view/Paiement.jsp";
			request.getRequestDispatcher(view).forward(request,response);	
		}
		
		else if (uri.endsWith("/addPaiement")) {
			Transaction t =transactionAction.AddPaiement(request);
			if(t!=null) {
				request.setAttribute("recu",t );
				request.setAttribute("agence",a );
				request.setAttribute("user",u );
				view = "/view/RecuTransaction.jsp";
			}
			else {
				view = "/view/Paiement.jsp";
			}

			
			request.getRequestDispatcher(view).forward(request,response);	
		}
		
		else if (uri.endsWith("/ModifierAgence")) {
			Agence aa = agenceAction.UploadAgence(uri);
			request.setAttribute("agence",aa);
			view = "/view/ModifierAgence.jsp";
			request.getRequestDispatcher(view).forward(request,response);	
		}
		
		else if (uri.endsWith("/ListeAgence")) {
			request.setAttribute("listagence",agenceAction.SelectAll());
			view = "/view/ListeAgences.jsp";
			request.getRequestDispatcher(view).forward(request,response);	
		}
		else if (uri.endsWith("/uploadAgence")) {
			
			agenceAction.ModifierAgence(request);
			request.setAttribute("listagence",agenceAction.SelectAll());
			view = "/view/ListeAgences.jsp";
			response.sendRedirect("http://localhost:8080/EasyPay/easypay/ListeAgence");
		
		}
		else if (uri.endsWith("/DeleteAgence")) {
			
			agenceAction.DeleteAgence(uri);
			request.setAttribute("listagence",agenceAction.SelectAll());
			view = "/view/ListeAgences.jsp";
			response.sendRedirect("http://localhost:8080/EasyPay/easypay/ListeAgence");
		
		}
		
		
		else if (uri.endsWith("/Affectation")) {
			request.setAttribute("listuser",userAction.selectResponsableNonAffecte() );
			request.setAttribute("listagence",agenceAction.SelectAll());
			view = "/view/Affectation.jsp";
			request.getRequestDispatcher(view).forward(request,response);	
		}
		
		else if (uri.endsWith("/addAffectation")) {
			request.setAttribute("user",u );
			request.setAttribute("agence",a );
			userAction.Affectation(request);
			agenceAction.changerResponsable(request);
			request.setAttribute("listagence",agenceAction.SelectAll());
			view = "/view/ListeAgences.jsp";
			response.sendRedirect("http://localhost:8080/EasyPay/easypay/ListeAgence");	
		}
		
		else if (uri.endsWith("/NouveauResponsable")) {
			request.setAttribute("user",u );
			request.setAttribute("agence",a );
			view = "/view/NouveauResponsable.jsp";
			request.getRequestDispatcher(view).forward(request,response);	
		}
		
		else if (uri.endsWith("/Addresponsable")) {
			userAction.AddResponsable(request);
			view = "/view/NouveauResponsable.jsp";
			request.getRequestDispatcher(view).forward(request,response);	
		}
		
		
		else if (uri.endsWith("/Login")) {
			u=null;
			request.setAttribute("listagence",agenceAction.SelectAll());
			view = "/view/login.jsp";
			request.getRequestDispatcher(view).forward(request,response);	
		}
		
		else if (uri.endsWith("/NouveauClient")) {
			request.setAttribute("listagence",agenceAction.SelectAll());
			userAction.AddClient(request);
			view = "/view/login.jsp";
			request.getRequestDispatcher(view).forward(request,response);	
		}
		
		else if (uri.endsWith("/ListeClient")) {
			request.setAttribute("listclient",userAction.selectClient(a.getNomagence()));
			view = "/view/ApprouveClient.jsp";
			request.getRequestDispatcher(view).forward(request,response);	
		}
		else if (uri.endsWith("/ApprouverClient")) {
			
			userAction.approuverCleint(uri);
			response.sendRedirect("http://localhost:8080/EasyPay/easypay/ListeClient");
		
		}
		
		else if (uri.endsWith("/authentification")) {
			
			
			u = userAction.Login(request);
			if(u!=null) {
				a = agenceAction.getAgence(u.getAgence());
				if(u.getRole().equals("Client")) {
					System.out.println("Voila le client : " + u);
					response.sendRedirect("http://localhost:8080/EasyPay/easypay/NouvelleTransactionClient");

				}
				else if(u.getRole().equals("Responsable")) {
					response.sendRedirect("http://localhost:8080/EasyPay/easypay/NouvelleTransactionResponsable");
				}
				else if(u.getRole().equals("Admin")) {
					response.sendRedirect("http://localhost:8080/EasyPay/easypay/AjouterAgence");
				}
			}
			else {
				
			request.setAttribute("listagence",agenceAction.SelectAll());
			view = "/view/login.jsp";
			request.getRequestDispatcher(view).forward(request,response);	
			
			}
			
			
			
			
		
		}
		
		
		
		
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
