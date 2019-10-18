<%@page import="com.easypay.models.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>PFE-ESISA</title>

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


	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/core/app.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/pages/form_layouts.js"></script>
	<!-- /theme JS files -->

	<!-- Theme JS files -->
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/core/libraries/jasny_bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/forms/selects/select2.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/forms/selects/bootstrap_multiselect.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/forms/selects/bootstrap_select.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/forms/styling/uniform.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/core/libraries/jquery_ui/core.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/forms/selects/selectboxit.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/forms/inputs/typeahead/typeahead.bundle.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/forms/tags/tagsinput.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/forms/tags/tokenfield.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/forms/inputs/touchspin.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/forms/inputs/maxlength.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/forms/inputs/formatter.min.js"></script>


	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/pages/form_floating_labels.js"></script>
	<!-- /theme JS files -->



	<!-- Theme JS files -->
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/forms/selects/bootstrap_select.min.js"></script>


	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/pages/form_bootstrap_select.js"></script>
	<!-- /theme JS files -->
	<!-- Theme JS files -->
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/forms/validation/validate.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/forms/selects/bootstrap_multiselect.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/forms/inputs/touchspin.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/forms/selects/select2.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/forms/styling/switch.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/forms/styling/switchery.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/forms/styling/uniform.min.js"></script>


	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/pages/form_validation.js"></script>
	
	<script type="text/javascript">
	function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'fr', includedLanguages: 'ar,en,fr', layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
}
</script>
<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
	<!-- /theme JS files -->
	
<!-- Theme JS files 
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/extensions/session_timeout.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/ui/prism.min.js"></script>

	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/pages/extra_idle_timeout.js"></script>
	<!-- /theme JS files -->

	<% User u = (User)(request.getAttribute("user")); %>

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
						<li><a href="easypay/AjouterAgence"><i class="icon-office"></i>Ajouter une agence</a></li>
						<li><a href="easypay/ListeAgence"><i class="icon-list"></i>Liste des agences</a></li>
						<li><a href="easypay/NouveauResponsable"><i class="icon-user-plus"></i>Nouveau responsable</a></li>
						<li><a href="easypay/Affectation"><i class="icon-user-check"></i>Affectation</a></li>
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


					<!-- 2 columns form -->
					<form  action="easypay/Addresponsable" class="form-validate-jquery">
					<fieldset class="content-group">
						<div class="panel panel-flat">
							<div class="panel-heading">
										<div class="heading-elements">
											<ul class="icons-list">
						                		<li><a data-action="collapse"></a></li>
						                		<li><a data-action="reload"></a></li>
						                		<li><a data-action="close"></a></li>
						                	</ul>
					                	</div>
					                	<h4><i class=" position-left"></i> <span class="text-semibold">Inscription</span></h4>
		                	<p class="mb-15">Veillez saisir les informations du responsable.</p>
									</div>

							<div class="panel-body">
								<div class="row">
									

									<div class="col-md-6">
										<fieldset>
						                	
						                	<legend class="text-semibold"><i class="icon-reading position-left"></i> Information Personnels</legend>

											<div class="row">
												<div class="col-md-6">
													<div class="form-group">
														<label>Nom: <span class="text-danger">*</span></label>
														<input type="text" placeholder="Entrer le nom" class="form-control" name="nom" id="nom" required="required" >
													<div class="form-control-feedback">
														<i class="icon-user-check text-muted"></i>
													</div>
													</div>
												</div>

												<div class="col-md-6">
													<div class="form-group">
														<label>Prenom: <span class="text-danger">*</span></label>
														<input type="text" placeholder="Entrer le prenom" class="form-control" name="prenom" id="prenom" required="required" >
													<div class="form-control-feedback">
														<i class="icon-user-check text-muted"></i>
													</div>
													</div>
												</div>
											</div>

											<div class="row">
												<div class="col-md-6">
													<div class="form-group">
														<label>Email: <span class="text-danger">*</span></label>
														<input type="email" placeholder="example@gmail.com" class="form-control" name="email" id="email" required="required" >
													<div class="form-control-feedback">
														<i class="icon-mention text-muted"></i>
													</div>
													</div>
												</div>

												
												<div class="col-md-6">
													
													
													
													<div class="form-group form-group-material">
										<label>Telephone: <span class="text-danger">*</span></label>
			                        	<input type="text" class="form-control" data-mask="09 99 99 99 99" placeholder="09 99 99 99 99" name="tel" id="tel" required="required" >
													<div class="form-control-feedback">
														<i class=" icon-phone2 text-muted"></i>
													</div>
													</div>
			
												</div>
										
											</div>

											<div class="row">
												
<div class="col-md-8">
												<div class="form-group">
													<label>Adresse: </label>
													<input type="text" class="form-control" placeholder="Entrer l'adresse" name="adresse" id="adresse"  >
												<div class="form-control-feedback">
														<i class=" icon-location4 text-muted"></i>
													</div>
												</div>
		</div>	
		<div class="col-md-4">
												<div class="form-group">
													<label>CIN: </label>
													<input type="text" class="form-control" placeholder="" name="cin" id="cin"  >
												<div class="form-control-feedback">
														<i class=" icon-user text-muted"></i>
													</div>
												</div>
		</div>										 
												
											</div>							
										</fieldset>
									</div>									
									<div class="col-md-6">
										<fieldset>
											<legend class="text-semibold"><i class=" position-left"></i> </legend>

											<div class="form-group">
												<label>Nom d'utilisateur: <span class="text-danger">*</span></label>
												<input type="text" class="form-control maxlength" maxlength="15"    placeholder="Entrer le login" name="login" id="login" required="required" >
												<div class="form-control-feedback">
												<i class="icon-user-plus text-muted"></i>
											</div>
											</div>

											<div class="form-group">
												<label class="control-label">Mot de Passe: <span class="text-danger">*</span></label>
												<input type="password" name="pass" id="pass" class="form-control" required="required" placeholder="Entrer le Mot de Pass">
												<div class="form-control-feedback">
														<i class="icon-user-lock text-muted"></i>
													</div>
											</div>
											
											<div class="form-group">
											<label class="control-label ">  Confirmer le Mot de passe: <span class="text-danger">*</span></label>
												
												<input type="password" name="pass2" id="pass2" class="form-control" required="required" placeholder="Confirmer le Mot de passe">
												<div class="form-control-feedback">
														<i class="icon-user-lock text-muted"></i>
													</div>
											</div>
									
										</fieldset>
									</div>
								</div>

								<div class="text-right" >
									<button type="submit" class="btn btn-primary" name="forminscription">Ajouter<i class="icon-arrow-right14 position-right" ></i></button>
									

									

											  
								</div>
								
							</div>
							

         				
						</div>
						</fieldset>
					</form>

					<!-- Footer -->
					<div class="footer text-muted">
						&copy; 2019 EasyPay
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






