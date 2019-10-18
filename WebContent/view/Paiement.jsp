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

					<!-- Simple panel -->
					<div class="raw">

					<div class="col-md-12">

							<!-- Advanced legend -->
							<form  action="easypay/addPaiement">
								<div class="panel panel-flat">
									<div class="panel-heading">
										<div class="heading-elements">
											<ul class="icons-list">
						                		<li><a data-action="collapse"></a></li>
						                		<li><a data-action="reload"></a></li>
						                		<li><a data-action="close"></a></li>
						                	</ul>
					                	</div>
					                	
									</div>

									<div class="panel-body">
										<fieldset>
											<legend class="text-semibold">
												<i class="  icon-user position-left"></i>
												Veuillez entrer le code d'envoi et le cin du bénéficiaire
												<a class="control-arrow" data-toggle="collapse" data-target="#demo1">
													<i class="icon-circle-down2"></i>
												</a>
											</legend>

											<div class="collapse in" id="demo1">

						                		<div class="row">
									                <div class="col-md-3">
														<div class="form-group">
															<label>CIN </label>
								                        	<input type="text" class="form-control" name="cin" id="cin" required="required" placeholder="">
								                        	<span class="help-block">&nbsp;&nbsp;CD13467</span>
														</div>
							                		</div>
							                		<div class="col-md-7">
														<div class="form-group">
															<label>Code d'envoie </label>
								                        	<input type="text" class="form-control" name="code" id="code" required="required" placeholder="">
								                        	<span class="help-block">&nbsp;&nbsp;KF3740gY7b</span>
														</div>
							                		</div>	
						                		</div>
											</div>
										</fieldset>



										<div class="text-right">
											<button type="submit" name="etape1" id="etape1" class="btn btn-primary">Confirmer <i class="icon-arrow-right14 position-right"></i></button>
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

	<script type="text/javascript">
		function recu() {
			var r;
			m = document.getElementById("montant").value;
			if(m<=1000) {
				r = m - 37;
			}
			else if (m>=1000.1 && m<=3000){
				r = m - 47;
			}
			else if (m>=3000.1 && m<=10000){
				r = m - 67;
			}
			else if (m>10000){
				r = m - m*0.0067;
			} 


			document.getElementById("montantrecu").value=r;

		}

	</script>

</body>
</html>
