<%@page import="com.easypay.models.User"%>
<%@page import="com.easypay.models.Agence"%>
<%@page import="com.easypay.models.Transaction"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>EasyPay</title>

	<!-- Global stylesheets -->
	<link href="https://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900" rel="stylesheet" type="text/css">
	<link href="<%=request.getContextPath() %>/view/assets/css/icons/icomoon/styles.css" rel="stylesheet" type="text/css">
	<link href="<%=request.getContextPath() %>/view/assets/css/bootstrap.css" rel="stylesheet" type="text/css">
	<link href="<%=request.getContextPath() %>/view/assets/css/core.css" rel="stylesheet" type="text/css">
	<link href="<%=request.getContextPath() %>/view/assets/css/components.css" rel="stylesheet" type="text/css">
	<link href="<%=request.getContextPath() %>/view/assets/css/colors.css" rel="stylesheet" type="text/css">
	<!-- /global stylesheets -->

	<!-- Core JS files -->
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/loaders/pace.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/core/libraries/jquery.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/core/libraries/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/loaders/blockui.min.js"></script>
	<!-- /core JS files -->

	<!-- Theme JS files -->
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/forms/styling/uniform.min.js"></script>

	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/core/app.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/pages/invoice_grid.js"></script>
	<!-- /theme JS files -->

</head>


<% List<Transaction> listes =(List<Transaction>)(request.getAttribute("listtransaction")); 

	Agence a = (Agence)(request.getAttribute("agence"));
	User u= (User)(request.getAttribute("user"));
	
	%>
<body class="navbar-top" onload="">
	<!-- Main navbar -->
	<div class="navbar navbar-inverse navbar-fixed-top" style="background-color: #015db7">
		<div class="navbar-header">
			<a class="navbar-brand" href="index.html"><img src="<%=request.getContextPath() %>/view/assets/images/logo.png" alt=""></a>

			<ul class="nav navbar-nav pull-right visible-xs-block">
				<li><a data-toggle="collapse" data-target="#navbar-mobile"><i class="icon-tree5"></i></a></li>
				<li><a class="sidebar-mobile-main-toggle"><i class="icon-paragraph-justify3"></i></a></li>
			</ul>
		</div>

		<div class="navbar-collapse collapse" id="navbar-mobile" style="background-color: #015db7">
			<ul class="nav navbar-nav navbar-right">
				
				<li class="dropdown dropdown-user">
					<a class="dropdown-toggle" data-toggle="dropdown">
						<img src="<%=request.getContextPath() %>/view/assets/images/tim_80x80.png" alt="">
						<span><%=u.getUsername() %></span>
						<i class="caret"></i>
					</a>

					<ul class="dropdown-menu dropdown-menu-right">
						<li><a href="easypay/NouvelleTransactionResponsable"><i class=" icon-cash"></i>Nouvelle transaction</a></li>
						<li><a href="easypay/Paiement"><i class="icon-cash3"></i>Payer une transaction</a></li>
						<li><a href="easypay/ListeClient"><i class="icon-users4"></i>Liste des clients</a></li>
						<li><a href="easypay/HistoriqueTransaction"><i class="icon-grid"></i>Historique des transactions</a></li>
						<li class="divider"></li>
						<li><a href="easypay/Login"><i class="icon-switch2"></i> Déconnexion</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
	<!-- /main navbar -->


	<!-- Page container -->
	<div class="page-container">

		<!-- Page content -->
		<div class="page-content">

			


			<!-- Main content -->
			<div class="content-wrapper">


				<!-- Content area -->
				<div class="content">

					<!-- Detached content -->
					<div class="container-detached">
						<div class="content-detached">

							<!-- Invoice grid options -->
							<div class="navbar navbar-default navbar-xs navbar-component">
								<ul class="nav navbar-nav no-border visible-xs-block">
									<li><a class="text-center collapsed" data-toggle="collapse" data-target="#navbar-filter"><i class="icon-menu7"></i></a></li>
								</ul>

								<div class="navbar-collapse collapse" id="navbar-filter">
									<p class="navbar-text">Filtrer:</p>
									<ul class="nav navbar-nav">
										<li class="dropdown">
											<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-sort-time-asc position-left"></i> Par date <span class="caret"></span></a>
											<ul class="dropdown-menu">
												<li><a href="#">Voir Tout</a></li>
												<li class="divider"></li>
												<li><a href="#">Aujourd'hui</li>
												<li><a href="#">Hier</a></li>
												<li><a href="#">Cette Semaine</a></li>
												<li><a href="#">Ce Mois</a></li>
												<li><a href="#">Cette Année</a></li>
											</ul>
										</li>

										<li class="dropdown">
											<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-sort-amount-desc position-left"></i> Par status <span class="caret"></span></a>
											<ul class="dropdown-menu">
												<li><a href="#">Voir Tout</a></li>
												<li class="divider"></li>
												<li><a href="#">Payé</a></li>
												<li><a href="#">Non Payé</a></li>
											</ul>
										</li>

									
									</ul>

									<div class="navbar-right">
										<p class="navbar-text">Trier:</p>
										<ul class="nav navbar-nav">
											<li class="active"><a href="#"><i class="icon-sort-alpha-asc position-left"></i> Croissant</a></li>
											<li><a href="#"><i class="icon-sort-alpha-desc position-left"></i> Descroissant</a></li>
										</ul>
									</div>
								</div>
							</div>
							<!-- /invoice grid options -->


							<!-- Invoice grid -->


							<div class="row">
							
							<% for( Transaction t : listes){ %>
								<div class="col-md-6">
									<div class="panel invoice-grid">
										<div class="panel-body">
											<div class="row">
												<div class="col-sm-6">
													<h6 class="text-semibold no-margin-top"><%=t.getNomExpediteur() %>&nbsp;<%=t.getPrenomExpediteur() %></h6>
													<ul class="list list-unstyled">
														
														<li>Mode d'envoi: <span class="text-semibold"><%=t.getMethodeenvoi() %></span></li>
														<li>Mode de reception: <span class="text-semibold"><%=t.getMethoderecu() %></span></li>
														
													</ul>
												</div>

												<div class="col-sm-6">
													<h6 class="text-semibold text-right no-margin-top">Recu #<%=t.getNumero() %></h6>
													<ul class="list list-unstyled text-right">
														<li>Montant: <span class="text-semibold"><%=t.getMontantrecu() %> Dhs </span></li>
														
															Statut: &nbsp;
															<%if(t.getPaye().equals("oui")){ %>
															<li class="label bg-primary-400 " >Payé </li>
														
															<%}else if(t.getPaye().equals("non")){ %>
															<li class="label bg-danger-400 " >Non Payé </li>
														
															<%}else if(t.getPaye().equals("annule")){ %>
															<li class="label bg-warning-400 " >Annulé </li>
															<%} %>
													
													</ul>
												</div>
											</div>
										</div>

										<div class="panel-footer panel-footer-condensed">
											<div class="heading-elements">
												<span class="heading-text">
													<span class="status-mark border-danger position-left"></span> Date : <span class="text-semibold">05/01/2019</span>
												</span>

												<ul class="list-inline list-inline-condensed heading-text pull-right">
													<li><a href="#" class="text-default" data-toggle="modal" data-target="#<%=t.getNumero() %>"><i class="icon-eye8"></i></a></li>
													<li class="dropdown">
														<a href="#" class="text-default dropdown-toggle" data-toggle="dropdown"><i class="icon-menu7"></i> <span class="caret"></span></a>
														<ul class="dropdown-menu dropdown-menu-right">
															<li><a href="#"><i class="icon-printer"></i> Imprimer Recu</a></li>
															<li><a href="#"><i class="icon-file-download"></i> Telecharger Recu</a></li>
															
														</ul>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>

							<%} %>

							</div>

<% for( Transaction t : listes){ %>

				            <!-- Modal with invoice -->
							<div id="<%=t.getNumero() %>" class="modal fade">
								<div class="modal-dialog modal-full">
									<div class="modal-content">
						<div class="panel panel-white">
						<div class="panel-heading">
							<h6 class="panel-title">Recu de transfert</h6>
							<div class="heading-elements">
								<button type="button" class="btn btn-default btn-xs heading-btn"><i class="icon-file-check position-left"></i> Enregistrer</button>
								<button type="button" class="btn btn-default btn-xs heading-btn"><i class="icon-printer position-left"></i> Imprimer</button>
		                	</div>
						</div>

						<div class="panel-body no-padding-bottom">
							<div class="row">
								<div class="col-sm-6 content-group">
									<img src="<%=request.getContextPath() %>/view/assets/images/logo_demo.png" class="content-group mt-10" alt="" style="width: 120px;">
		 							<ul class="list-condensed list-unstyled">
										<li><%=a.getNomagence() %></li>
										<li><%=a.getAdresse() %></li>
										<li><%=a.getVille() %></li>
										<li><%=a.getTel() %></li>
									</ul>
								</div>

								<div class="col-sm-6 content-group">
									<div class="invoice-details">
										<h5 class="text-uppercase text-semibold">Recu #<%=t.getNumero() %></h5>
										<ul class="list-condensed list-unstyled">
											<li>Date: <span class="text-semibold"><%=t.getDate() %></span></li>
											
										</ul>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-6 col-lg-9 content-group">
									<span class="text-muted">Expéditeur</span>
		 							<ul class="list-condensed list-unstyled">
										<li><h5><%=t.getNomExpediteur() %>&nbsp;<%=t.getPrenomExpediteur() %></h5></li>
										<li><span class="text-semibold"><%=t.getCinExpediteur() %></span></li>
										<li><%=t.getTelExpediteur() %></li>
									
										
									</ul>
								</div>

								<div class="col-md-6 col-lg-3 content-group">
									<span class="text-muted">Détails de transfert</span>
									<ul class="list-condensed list-unstyled invoice-payment-details">
										<li><h5>Montant envoyé: <span class="text-right text-semibold"><%=t.getMontantrecu() %> Dhs </span></h5></li>
										<li>Bénéficiaire: <span class="text-semibold"><%=t.getNomBeneficiare() %>&nbsp;<%=t.getPrenomBeneficiare() %></span></li>
										<li>CIN: <span><%=t.getCinBeneficiare() %></span></li>
										<li>Tel: <span><%=t.getTelBeneficiare() %></span></li>
										<li>Methode d'envoi: <span><%=t.getMethodeenvoi() %></span></li>
										<li>Methode de reception: <span><%=t.getMethoderecu() %></span></li>
										<li>Code d'envoi: <span class="text-semibold"><%=t.getCodeSecurite() %></span></li>
									</ul>
								</div>
							</div>
						</div>



						<div class="panel-body">
							<div class="row invoice-payment">
								<div class="col-sm-7">
									<div class="content-group">
										<h6>Signature du responsable de l'agence</h6>
										<div class="mb-15 mt-15">
											<img src="<%=request.getContextPath() %>/view/assets/images/signature.png" class="display-block" style="width: 150px;" alt="">
										</div>
									</div>
								</div>

								<div class="col-sm-5">
									<div class="content-group">
										<h6>Signature du client </h6>
										<div class="table-responsive no-border">

										</div>


									</div>
								</div>
							</div>
							
						</div>

					</div>
									</div>
								</div>
							</div>
							<!-- /modal with invoice -->
<%} %>
						</div>
					</div>
					<!-- /detached content -->


		


					<!-- Footer -->
			<div class="footer text-muted">
						&copy; 2019. <a href="#">EasyPay</a> All rights reserved</a>
					</div>
					<!-- /footer -->

				</div>
				<!-- /content area -->

			</div>
			<!-- /main content -->

		</div>
		<!-- /page content -->

	</div>
	<!-- /page container -->

</body>
</html>
