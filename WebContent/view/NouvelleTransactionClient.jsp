<%@page import="com.easypay.models.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<link rel="apple-touch-icon" sizes="76x76" href="<%=request.getContextPath() %>/view/trans/assets/img/apple-icon.png" />
	<link rel="icon" type="image/png" href="<%=request.getContextPath() %>/view/trans/assets/img/favicon.png" />
	<title>EasyPay |  Nouvelle transaction</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />

	<!-- CSS Files -->
    <link href="<%=request.getContextPath() %>/view/trans/assets/css/bootstrap.min.css" rel="stylesheet" />
	<link href="<%=request.getContextPath() %>/view/trans/assets/css/paper-bootstrap-wizard.css" rel="stylesheet" />

	<!-- CSS Just for demo purpose, don't include it in your project -->
	<link href="<%=request.getContextPath() %>/view/trans/assets/css/demo.css" rel="stylesheet" />

	<!-- Fonts and Icons -->
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.css" rel="stylesheet">
	<link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
	<link href="<%=request.getContextPath() %>/view/trans/assets/css/themify-icons.css" rel="stylesheet">
</head>

<% User u = (User)(request.getAttribute("user")); %>
<% String code = (String)(request.getAttribute("codess")) ;%>
<body onload="init()">
	<div class="image-container set-full-height" style="background-color: #015db7">
	    <!--   Creative Tim Branding   -->
	    <a href="http://localhost:8080/EasyPay/view/index-2.html">
	         <div class="logo-container">
	            <div class="">
	                <img src="<%=request.getContextPath() %>/view/trans/assets/img/logo.png">
	            </div>
	            <div class="brand">
	              
	            </div>
	        </div>
	    </a>

		<!--  Made With Paper Kit  -->
		<a href="http://localhost:8080/EasyPay/view/index-2.html" class="made-with-pk">
			<div class="brand">&nbsp;<i class="ti-home"></i></div>
			<div class="made-with"><strong>Page d'acceuil</strong></div>
		</a>

	    <!--   Big container   -->
	    <div class="container">
	        <div class="row">
		        <div class="col-sm-8 col-sm-offset-2">

		            <!--      Wizard container        -->
		            <div class="wizard-container">

		                <div class="card wizard-card" data-color="orange" id="wizardProfile">
		                    <form action="easypay/addTransactionClient" >
		                <!--        You can switch " data-color="orange" "  with one of the next bright colors: "blue", "green", "orange", "red", "azure"          -->

		                    	<div class="wizard-header text-center">
		                        	<h3 class="wizard-title">Nouvelle transaction</h3>
									<p class="category">Assurez vous de bien saisir des coordonnées correct</p>
		                    	</div>

								<div class="wizard-navigation">
									<div class="progress-with-circle">
									     <div class="progress-bar" role="progressbar" aria-valuenow="1" aria-valuemin="1" aria-valuemax="3" style="width: 21%;"></div>
									</div>
									<ul>
			                            <li>
											<a href="#about" data-toggle="tab">
												<div class="icon-circle">
													<i class="ti-user"></i>
												</div>
												Bénéficiaire
											</a>
										</li>
			                            <li>
											<a href="#account" data-toggle="tab">
												<div class="icon-circle">
													<i class="ti-credit-card"></i>
												</div>
												Mode d'envoi
											</a>
										</li>
			                            <li>
											<a href="#address" data-toggle="tab">
												<div class="icon-circle">
													<i class="ti-shopping-cart"></i>
												</div>
												Mode de reception
											</a>
										</li>
			                            <li>
											<a href="#FR" data-toggle="tab">
												<div class="icon-circle">
													<i class="ti-shopping-cart"></i>
												</div>
												Frais d'envoie
											</a>
										</li>
										 <li>
											<a href="#add" data-toggle="tab">
												<div class="icon-circle">
													<i class="ti-money"></i>
												</div>
												Payement
											</a>
										</li>
			                        </ul>
								</div>
		                        <div class="tab-content">
		                            <div class="tab-pane" id="about">
		                                <div class="row">
		                                    <div class="col-sm-12">
		                                        <h5 class="info-text"> Veuillez entrer les coordonnées du bénéficiaire</h5>
		                                    </div>
		                                    <div class="col-sm-5 col-sm-offset-1">
		                                        <div class="form-group">
		                                            <label>Nom</label>
		                                            <input type="text" name="nom"  id="nom" class="form-control" placeholder="Nom du bénéficiaire">
		                                        </div>
		                                    </div>
	                                    	<div class="col-sm-5 ">
		                                        <div class="form-group">
		                                            <label>Prenom</label>
		                                            <input type="text" name="prenom"  id="prenom" class="form-control" placeholder="Prenom du bénéficiaire">
		                                        </div>
		                                    </div>
		                                    <div class="col-sm-5 col-sm-offset-1">
		                                        <div class="form-group">
		                                            <label>Cin</label>
		                                            <input type="text" name="cin"  id="cin" class="form-control" placeholder="CD115761">
		                                        </div>
		                                    </div>
	                                    <div class="col-sm-5 ">
		                                        <div class="form-group">
		                                            <label>Tel</label>
		                                            <input type="text" name="tel"  id="tel" class="form-control" placeholder="06 41 72 82 62">
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                            <div class="tab-pane" id="account">
		                                <h5 class="info-text"> Veuillez choisir le mode d'envoi </h5>
		                                <div class="row">
		                                    <div class="col-sm-8 col-sm-offset-2">
		                                        <div class="col-sm-4 col-sm-offset-2">
													<div class="choice" data-toggle="wizard-checkbox">
		                                                <input type="checkbox" name="envoia" id="envoia" value="agence">
		                                                <div class="card card-checkboxes card-hover-effect">
		                                                    <i class="ti-home"></i>
															<p>Agence</p>
		                                                </div>
		                                            </div>
		                                        </div>
		                                        <div class="col-sm-4">
													<div class="choice" data-toggle="wizard-checkbox">
		                                                <input type="checkbox" name="envoib" id="envoib" value="banque">
		                                                <div class="card card-checkboxes card-hover-effect">
		                                                    <i class="ti-credit-card"></i>
															<p>Transfert bancaire</p>
		                                                </div>
		                                            </div>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                            <div class="tab-pane" id="address">
		                                <h5 class="info-text"> Veuillez choisir le mode de reception </h5>
		                                <div class="row">
	                                    <div class="col-sm-8 col-sm-offset-2">
		                                        <div class="col-sm-4 col-sm-offset-2">
													<div class="choice" data-toggle="wizard-checkbox">
		                                                <input type="checkbox" name="recua" id="recua" value="agence">
		                                                <div class="card card-checkboxes card-hover-effect">
		                                                    <i class="ti-home"></i>
															<p>Agence</p>
		                                                </div>
		                                            </div>
		                                        </div>
		                                        <div class="col-sm-4">
													<div class="choice" data-toggle="wizard-checkbox">
		                                                <input type="checkbox" name="recub" id="recub" value="banque">
		                                                <div class="card card-checkboxes card-hover-effect">
		                                                    <i class="ti-credit-card"></i>
															<p>Transfert bancaire</p>
		                                                </div>
		                                            </div>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                            <div class="tab-pane" id="FR">
		                                <h5 class="info-text"> Veuillez choisir qui va payer les frais d'envoie </h5>
		                                <div class="row">
	                                    <div class="col-sm-8 col-sm-offset-2">
		                                        <div class="col-sm-4 col-sm-offset-2">
													<div class="choice" data-toggle="wizard-checkbox">
		                                                <input type="checkbox" name="Expediteur" id="Expediteur" value="Expediteur">
		                                                <div class="card card-checkboxes card-hover-effect">
		                                                    <i class="ti-user"></i>
															<p>Expediteur</p>
		                                                </div>
		                                            </div>
		                                        </div>
		                                        <div class="col-sm-4">
													<div class="choice" data-toggle="wizard-checkbox">
		                                                <input type="checkbox" name="Beneficiaire" id="Beneficiaire" value="Beneficiaire">
		                                                <div class="card card-checkboxes card-hover-effect">
		                                                    <i class="ti-user"></i>
															<p>Bénéficiaire</p>
		                                                </div>
		                                            </div>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                            <div class="tab-pane" id="add">
		                                <div class="row">
		                                    <div class="col-sm-12">
		                                        <h5 class="info-text"> Veuillez entrer le montant que vous voulez envoyer </h5>
		                                    </div>


						                		
							                		
						                		<div class="row">

									                <div class="col-md-3">
														<div class="form-group">
															<label>Montant envoyé</label>
								                        	<input type="number" class="form-control" name="montant" id="montant" required="required" placeholder="" onkeyup="recu()">
								                        	<span class="help-block">&nbsp;&nbsp;Montant en Dirhams</span>
								                        </div>
							                		</div>	
							                		
							                	 <div class="col-md-3">
														<div class="form-group">
															<label>Frais de transfert </label>
								                        	<input type="text" class="form-control" name="frais" id="frais"  disabled="disabled" placeholder="">
								             
								                        </div>
							                		</div>
							                		
							                		 <div class="col-md-3">
														<div class="form-group">
															<label>Montant payé </label>
								                        	<input type="text" class="form-control" name="montantenvoye" id="montantenvoye"  disabled="disabled" placeholder="">
								
								                        </div>
							                		</div>
							                		
							                		

							                			 <div class="col-md-3">
														<div class="form-group">
															<label>Montant recu</label>
								                        	<input type="text" class="form-control" name="montantrecu" id="montantrecu"  disabled="disabled" placeholder="">
								                        	<input type="text" name="mr" id="mr"  hidden="hidden" placeholder="">
								                        </div>
							                		</div>
	
						                		</div>	
		                                </div>

		                                	<div class="row" id="divcordbanc">
		                                    <div class="col-sm-12">
		                                        <h5 class="info-text"> Veuillez entrer vos coordonnés bancaires </h5>
		                                    </div>
		                                    <div class="col-sm-6 col-sm-offset-1">
		                                    	<div class="form-group">
		                                            <label>Numero de la carte</label>
		                                            <input type="text" class="form-control" name="montant" id="montant" required="required" placeholder="5134 1234 6541 1829" ">
		                                        </div>
		                                    </div>
		                                    <div class="col-sm-2">
		                                        <div class="form-group">
		                                            <label>Mois</label>
		                                            <input type="text" class="form-control" name="mois" id="mois"  placeholder="01">
		                                        </div>
		                                    </div>
		                                     <div class="col-sm-2">
		                                        <div class="form-group">
		                                            <label>Annee</label>
		                                            <input type="text" class="form-control" name="annee" id="annee"  placeholder="19">
		                                        </div>
		                                    </div>
		                                    
		                                    <div class="col-sm-6 col-sm-offset-1">
		                                    	<div class="form-group">
		                                            <label>Nom et prenom du porteur</label>
		                                            <input type="text" class="form-control" name="porteur" id="porteur"  placeholder="Nom indiqué sur la carte" ">
		                                        </div>
		                                    </div>
		                                    <div class="col-sm-3">
		                                        <div class="form-group">
		                                            <label>Code de sécurité</label>
		                                            <input type="text" class="form-control" name="code" id="code"   placeholder="876">
		                                        </div>
		                                    </div>	

		                                </div>



		                                <div class="row" id="divrib">
		                                    <div class="col-sm-12">
		                                        <h5 class="info-text"> Veuillez entrer le numero de compte du bénéficiaire </h5>
		                                    </div>
		                                    <div class="col-sm-10 col-sm-offset-1">
		                                    	<div class="form-group">
		                                            <label>Numéro de compte - RIB</label>
		                                            <input type="text" class="form-control" name="rib" id="rib"  placeholder="123456789012345678901234" ">
		                                        </div>
		                                    </div>
		
		                                </div>


		                                <div class="row" id="divcodesecu">
		                                    <div class="col-sm-12">
		                                        <h5 class="info-text"> Veuillez envoyer ce code de sécurité au bénéficiaire </h5>
		                                    </div>
		                                    <div class="col-sm-10 col-sm-offset-1">
		                                    	<div class="form-group">
		                                            <label>Code de sécurité</label>
		                                            <input type="text" class="form-control" name="codesecurite" id="codesecurite" disabled="disabled" value="<%=code %>" >
		                                        </div>
		                                    </div>
		
		                                </div>


		                                <div class="row" id="divcodeagaence">
		                                    <div class="col-sm-12">
		                                        <h5 class="info-text"> Veuillez envoyer ce code de sécurité au bénéficiaire apres avoir payer le montant envoyé dans votre agence EasyPay</h5>
		                                    </div>
		                                    <div class="col-sm-10 col-sm-offset-1">
		                                    	<div class="form-group">
		                                            <label>Code de sécurité</label>
		                                            <input type="text" class="form-control" name="codesecurite2" id="codesecurite2" disabled="disabled" value="<%=code %>">
		                                        </div>
		                                    </div>
		
		                                </div>

		                                <div class="row" id="divcodea">
		                                    <div class="col-sm-12">
		                                        <h5 class="info-text"> Veuillez payer le montant envoyé dans votre agence EasyPay en utilisant le code de sécurité suivant</h5>
		                                    </div>
		                                    <div class="col-sm-10 col-sm-offset-1">
		                                    	<div class="form-group">
		                                            <label>Code de sécurité</label>
		                                            <input type="text" class="form-control" name="codesecurite3" id="codesecurite3" disabled="disabled" value="<%=code %>">
		                                        </div>
		                                    </div>
		
		                                </div>

		                                <input type="text" name="mmenvoi" id="mmenvoi" hidden="hidden">
		                                <input type="text" name="mmrecu" id="mmrecu" hidden="hidden">

		                    	<div class="wizard-header text-center">
									<p class="category">En ce qui concerne les frais de transfert, le cout varie en fonction de la somme à envoyé : pour les transferts inférieurs à 1000dh, un frais de 37DH sera perçu. Si la somme à envoyé est comprise entre 1000,01 à 3000 DH, le frais d’envoi sera de 47DH. 67 DH sera attribué à l'agence pour un transfert situé entre 3000,01 et10.000DH. Et au-delà de cette somme, le frais sera équivalent à 0,67 % de l’argent à envoyer.</p>
		                    	</div>
		                            </div>
		                        </div>
		                        <div class="wizard-footer">
		                            <div class="pull-right">
		                                <input type='button' class='btn btn-next btn-fill btn-warning btn-wd' name='next' value='Suivant' onclick="print()"/>
		                                <input type='submit' class='btn btn-finish btn-fill btn-warning btn-wd' name='finish' value='Confirmer'   />
		                            </div>

		                            <div class="pull-left">
		                                <input type="button" class='btn btn-previous btn-default btn-wd' name='previous' value='Precedent'onclick="init()" />
		                            </div>
		                            <div class="clearfix"></div>
		                        </div>
		                    </form>
		                </div>
		            </div> <!-- wizard container -->
		        </div>
	    	</div><!-- end row -->
		</div> <!--  big container -->


	</div>



</body>


	<script type="text/javascript">

	 var person = "Expediteur";
		function Paye() {
			person= document.getElementById("personnepaye").value;
			document.getElementById("montantrecu").value="";
			document.getElementById("mr").value="";
			document.getElementById("montantenvoye").value="";
			document.getElementById("montant").value="";
			document.getElementById("frais").value="";
		}
	
	
		function recu() {
			var r;
			m= document.getElementById("montant").value;
			if(person=="Expediteur") {
				if(m<=1000) {
					r = Number(m)+ 37;
					document.getElementById("frais").value=37;
					
					
				}
				else if (m>=1000.1 && m<=3000){
					r = Number(m)+ 47;
					document.getElementById("frais").value=47;
				}
				else if (m>=3000.1 && m<=10000){
					r = Number(m)+ 67;
					document.getElementById("frais").value=67;
				}
				else if (m>10000){
					r = Number(m)+ Number(m)*0.0067;
					document.getElementById("frais").value=Number(m)*0.0067;
				}
				document.getElementById("montantrecu").value=m;
				document.getElementById("mr").value=m;
				document.getElementById("montantenvoye").value=r;
			}
			else {
		
				if(m<=1000) {
					r = Number(m)- 37;
					document.getElementById("frais").value=37;
				}
				else if (m>=1000.1 && m<=3000){
					r = Number(m)- 47;
					document.getElementById("frais").value=47;
				}
				else if (m>=3000.1 && m<=10000){
					r = Number(m)- 67;
					document.getElementById("frais").value=67;
				}
				else if (m>10000){
					r = Number(m)- Number(m)*0.0067;
					document.getElementById("frais").value=Number(m)*0.0067;
				}
				
				document.getElementById("montantrecu").value=r;
				document.getElementById("mr").value=r;
				document.getElementById("montantenvoye").value=m;
			}



		}

		function print() {
			

			if (document.getElementById("Expediteur").checked){
				person="Expediteur";
				
			}
			else if (document.getElementById("Beneficiaire").checked){
				person="Beneficiaire";
			}
			if (document.getElementById("recua").checked){
				if(document.getElementById("envoia").checked) {
					document.getElementById("divcodeagaence").style.display ="block" ;
					document.getElementById("mmenvoi").value="Agence";
				}
				if (document.getElementById("envoib").checked){
				document.getElementById("divcordbanc").style.display ="block" ;
				document.getElementById("divcodesecu").style.display ="block" ;
				document.getElementById("mmenvoi").value="Transfert bancaire";
				}
				document.getElementById("mmrecu").value="Agence";
			}
			if (document.getElementById("recub").checked){
				
				if(document.getElementById("envoia").checked) {
					document.getElementById("divcodea").style.display ="block" ;
					document.getElementById("divrib").style.display ="block" ;
					document.getElementById("mmenvoi").value="Agence";
				}
				if (document.getElementById("envoib").checked){
				document.getElementById("divcordbanc").style.display ="block" ;
				document.getElementById("divrib").style.display ="block" ;
				document.getElementById("mmenvoi").value="Transfert bancaire";
				}
				document.getElementById("mmrecu").value="Transfert bancaire";
			}
	

		}



		function init() {
			document.getElementById("divcordbanc").style.display ="none" ;
			document.getElementById("divcodeagaence").style.display ="none" ;
			document.getElementById("divcodesecu").style.display ="none" ;
			document.getElementById("divrib").style.display ="none" ;
			document.getElementById("divcodea").style.display ="none" ;
			
		}
		

	</script>
	<!--   Core JS Files   -->
	<script src="<%=request.getContextPath() %>/view/trans/assets/js/jquery-2.2.4.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath() %>/view/trans/assets/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath() %>/view/trans/assets/js/jquery.bootstrap.wizard.js" type="text/javascript"></script>

	<!--  Plugin for the Wizard -->
	<script src="<%=request.getContextPath() %>/view/trans/assets/js/paper-bootstrap-wizard.js" type="text/javascript"></script>

	<!--  More information about jquery.validate here: http://jqueryvalidation.org/	 -->
	<script src="<%=request.getContextPath() %>/view/trans/assets/js/jquery.validate.min.js" type="text/javascript"></script>

</html>
