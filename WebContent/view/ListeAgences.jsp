<%@page import="com.easypay.models.User"%>
<%@page import="com.easypay.models.Agence"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Limitless - Responsive Web Application Kit by Eugene Kopyov</title>

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
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/tables/datatables/datatables.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/tables/datatables/extensions/fixed_columns.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/plugins/forms/selects/select2.min.js"></script>

	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/core/app.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/view/assets/js/pages/datatables_extension_fixed_columns.js"></script>
	<!-- /theme JS files -->

</head>
<% List<Agence> listes =(List<Agence>)(request.getAttribute("listagence")); 

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

					<!-- Left fixed column -->
					<div class="panel panel-flat">
						<div class="panel-heading">
							<h5 class="panel-title">Liste des Agences</h5>
							<div class="heading-elements">
								<ul class="icons-list">
			                		<li><a data-action="collapse"></a></li>
			                		<li><a data-action="reload"></a></li>
			                		<li><a data-action="close"></a></li>
			                	</ul>
		                	</div>
						</div>

						

						<table class="table datatable-fixed-left" width="100%">
							<thead>
						        <tr>
						          		<th>NOM</th>
										<th>RESPONSABLE</th>
										<th>VILLE</th>
										<th>ADRESSE</th>
										<th>TELEPHONE 1</th>
										<th>TELEPHONE 2</th>
										<th>FAXE</th>
										<th>EMAIL</th>
										<th></th>
						        </tr>
						    </thead>
						    <tbody>

						    	<% for( Agence t : listes){ %>
						        <tr>
						            <td><%=t.getNomagence() %></td>
						            <td><%=t.getResponsable() %></td>
						            <td><%=t.getVille() %></td>
						            <td><%=t.getAdresse() %></td>
						            <td><%=t.getTel() %></td>
						            <td><%=t.getTel2() %></td>
					                <td><%=t.getFax() %></td>
						            <td><%=t.getEmail() %></td>
						            <th>
						            	<ul class="icons-list">
						            	<%String modif = "easypay/$"+t.getId()+"$/ModifierAgence";
						            	String delete = "easypay/$"+t.getId()+"$/DeleteAgence";
						            	%>
												<li class="text-primary-600"><a href="<%=modif%>"><i class="icon-pencil7"></i></a></li>
												<li class="text-danger-600"><a href="<%=delete%>"><i class="icon-trash"></i></a></li>
												
											</ul>
										</th>
						       	
						        </tr>

							<%} %>
						    
						
						    </tbody>
						</table>
					</div>
					<!-- /left fixed column -->



					<!-- Footer -->
					<div class="footer text-muted">
						&copy; 2015. <a href="#">Limitless Web App Kit</a> by <a href="http://themeforest.net/user/Kopyov" target="_blank">Eugene Kopyov</a>
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
