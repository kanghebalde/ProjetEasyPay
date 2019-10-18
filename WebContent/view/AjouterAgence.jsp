<%@page import="com.easypay.models.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="fr">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>EasyPay | Ajouter un agence</title>

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

					<!-- Simple panel -->
					<div class="raw">

					<div class="col-md-12">

							<!-- Advanced legend -->
							<form  action="easypay/addAgence">
								<div class="panel panel-flat">
									<div class="panel-heading">
										<div class="heading-elements">
											<ul class="icons-list">
						                		<li><a data-action="collapse"></a></li>
						                		<li><a data-action="reload"></a></li>
						                		<li><a data-action="close"></a></li>
						                	</ul>
					                	</div>
					                	<h4><i class=" position-left"></i> <span class="text-semibold">Bienvenue&nbsp;<%=u.getUsername() %>!</span></h4>
		                	<p class="mb-15">Commencez par nous indiquer le nom de votre agence, son adresse et ses coordonnées.</p>
									</div>

									<div class="panel-body">
										<fieldset>
											<legend class="text-semibold">
												<i class=" icon-office position-left"></i>
												Quel est le nom de votre agence ?
												<a class="control-arrow" data-toggle="collapse" data-target="#demo1">
													<i class="icon-circle-down2"></i>
												</a>
											</legend>

											<div class="collapse in" id="demo1">
												<div class="col-md-5">
													<div class="form-group">
														
														<input type="text" class="form-control" name="nom" id="nom" required="required" placeholder="">
														<span class="help-block"><i class="icon-warning"></i>&nbsp;&nbsp;Il s'agit du nom que les clients verront lorsqu'ils rechercheront une agence.</span>
													</div>		
												</div>													
											</div>
										</fieldset>
										<fieldset>
											<legend class="text-semibold">
												<i class="icon-user position-left"></i>
												Quelle sont les informations de contact pour cette agence ?
												<a class="control-arrow" data-toggle="collapse" data-target="#demo2">
													<i class="icon-circle-down2"></i>
												</a>
											</legend>

											<div class="collapse in" id="demo2">



						                		<div class="col-md-5">
													<div class="form-group">
														<label>Numéros de téléphone </label>
							                        	<input type="text" class="form-control" name="tel" id="tel" required="required" placeholder="">
							                        	<span class="help-block">&nbsp;&nbsp;06 - 55555555</span>
													</div>
						                		</div>
						                		<div class="col-md-5">        
													<div class="form-group">
														<label>Numéros de téléphone sécondaire (facultatif) </label>
							                        	<input type="text" class="form-control" name="tel2" id="tel2" required="required" placeholder="">
							                        	<span class="help-block">&nbsp;&nbsp;06 - 55555555</span>
													</div>							
						                		
						                	</div>	

												<div class="col-md-5">
													<div class="form-group">
														<label>Numéros de fax (facultatif) </label>
							                        	<input type="text" class="form-control" name="fax" id="fax" required="required" placeholder="">
							                        	<span class="help-block">&nbsp;&nbsp;06 - 55555555</span>
													</div>			
												</div>
												<div class="col-md-5">
													<div class="form-group">
														<label>Email de l'agence</label>
														<input type="email" name="email" class="form-control" id="email" required="required" placeholder="">
														
													</div>		
												</div>

											
						                	

						                	
		               				 </div>
										</fieldset>

										<fieldset>
											<legend class="text-semibold">
												<i class="icon-location3"></i>
												Où se trouve votre établissement ?
												<a class="control-arrow" data-toggle="collapse" data-target="#demo3">
													<i class="icon-circle-down2"></i>
												</a>
											</legend>
						<div class="collapse in" id="demo3">	
						<div class="col-md-10">

									<div class="col-md-10">
							<div class="form-group">
										<span class="help-block"><i class="icon-circle-down2"></i>&nbsp;&nbsp;Assurez-vous d'indiquer l'adresse exacte de votre agence.</span>
										<label>Adresse:</label>
										<input type="text" class="form-control" id="us2-address" name="us2-address" required="required">
									</div>
								</div>

<div class="col-md-5">
									<div class="form-group">
										<label>Ville</label>
										<input type="text" class="form-control" id="ville" name="ville">
									</div>
</div>			
<div class="col-md-5">
									<div class="form-group">
										<label>Rayon:</label>
										<input type="text" class="form-control" id="us2-radius" name="us2-radius">
									</div>
</div>

<div class="col-md-10">
									<div class="form-group">
										<div id="us2" class="map-wrapper"></div>
									</div>
</div>
<div class="col-md-5">
									<div class="form-group">
										<label>Latitude:</label>
										<input type="text" class="form-control" id="us2-lat" name="us2-lat">
									</div>
									</div>
<div class="col-md-5">
									<div class="form-group">
										<label>Longitude:</label>
										<input type="text" class="form-control" id="us2-lon" name="us2-lon">
									</div>
									</div>
								
							
						</div>
						</div>      		
										</fieldset>

										<div class="text-right">
											<button type="submit" name="etape1" id="etape1" class="btn btn-primary">Continuer <i class="icon-arrow-right14 position-right"></i></button>
										</div>
									</div>
								</div>
							</form>
							<!-- /a legend -->

						</div>
					</div>
					<!-- /fieldset legend -->
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
