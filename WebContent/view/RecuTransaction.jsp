<%@page import="com.easypay.models.User"%>
<%@page import="com.easypay.models.Agence"%>
<%@page import="com.easypay.models.Transaction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="fr">
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
	<!-- Core JS files -->
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/loaders/pace.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/core/libraries/jquery.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/core/libraries/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/loaders/blockui.min.js"></script>
	<!-- /core JS files -->
	
	<!-- /core JS files -->
		
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/core/libraries/jasny_bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/forms/styling/uniform.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/forms/inputs/autosize.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/forms/inputs/formatter.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/forms/inputs/typeahead/typeahead.bundle.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/forms/inputs/typeahead/handlebars.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/forms/inputs/passy.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/forms/inputs/maxlength.min.js"></script>
	<!-- Theme JS files -->
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/forms/selects/select2.min.js"></script>

	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/pages/form_layouts.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/pages/form_controls_extended.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/core/app.js"></script>
	


	<!-- Theme JS files -->
	<script type="text/javascript" src="http://maps.google.com/maps/api/js?key=AIzaSyAv9l3bIhXWkygAjKsM9TId_2NfajKrec4&amp;sensor=false&amp;libraries=places"></script>
	

	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/core/libraries/jquery_ui/widgets.min.js"></script>
	
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/pickers/location/typeahead_addresspicker.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/pickers/location/autocomplete_addresspicker.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/pickers/location/location.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/ui/prism.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/pages/picker_location.js"></script>

		<!-- Theme JS files -->
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/forms/validation/validate.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/forms/selects/bootstrap_multiselect.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/forms/inputs/touchspin.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/forms/styling/switch.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/forms/styling/switchery.min.js"></script>


	

	

	
	<!-- /theme JS files -->





<% Transaction t = (Transaction)(request.getAttribute("recu")); 
	Agence a = (Agence)(request.getAttribute("agence"));
	User u= (User)(request.getAttribute("user"));
%>





</head>


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

					<!-- Invoice template -->
					<div class="panel panel-white">
						<div class="panel-heading">
							<h6 class="panel-title">Recu de transfert</h6>
							<div class="heading-elements">
								<button type="button" class="btn btn-default btn-xs heading-btn"><i class="icon-file-check position-left"></i> Enregistrer</button>
								<button type="button" class="btn btn-default btn-xs heading-btn" onclick="print()"><i class="icon-printer position-left"></i> Imprimer</button>
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
										<div class="text-right">
											<button type="button" class="btn btn-primary btn-labeled"><b><i class="icon-paperplane"></i></b> Confirmer</button>
										</div>
						</div>

					</div>
					<!-- /invoice template -->

				</div>
					<!-- /simple panel -->

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
