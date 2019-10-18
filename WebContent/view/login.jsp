<%@page import="com.easypay.models.Agence"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
  <head>
    <title>Authentification | Inscription</title>
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <script src="/cdn-cgi/apps/head/3ts2ksMwXvKRuG480KNifJ2_JNM.js"></script><link rel="icon" href="<%=request.getContextPath() %>/view/images/favicon.ico" type="image/x-icon">
    <!-- Stylesheets-->
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Roboto:100,300,300i,400,700,900">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/view/css/bootstrap.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/view/css/fonts.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/view/css/style.css" id="main-styles-link">

  </head>
  
  <% List<Agence> listes =(List<Agence>)(request.getAttribute("listagence")); %>
  <body>
    <div class="preloader">
      <div class="preloader-body">
        <div class="cssload-container">
          <div class="cssload-speeding-wheel"></div>
        </div>
        <p>Chargement...</p>
      </div>
    </div>
    <div class="page">
      <section class="section one-screen-page bg-primary-dark">
        <div class="one-screen-page-inner">
      <header class="section page-header">
        <!-- RD Navbar-->
        <div class="rd-navbar-wrap rd-navbar-absolute">
          <nav class="rd-navbar rd-navbar-creative" data-layout="rd-navbar-fixed" data-sm-layout="rd-navbar-fixed" data-md-layout="rd-navbar-fixed" data-md-device-layout="rd-navbar-fixed" data-lg-layout="rd-navbar-static" data-lg-device-layout="rd-navbar-static" data-xl-layout="rd-navbar-static" data-xl-device-layout="rd-navbar-static" data-lg-stick-up-offset="20px" data-xl-stick-up-offset="20px" data-xxl-stick-up-offset="20px" data-lg-stick-up="true" data-xl-stick-up="true" data-xxl-stick-up="true">
            <div class="rd-navbar-main-outer">
              <div class="rd-navbar-main">
                <!-- RD Navbar Panel-->
                <div class="rd-navbar-panel">
                  <!-- RD Navbar Toggle-->
                  <button class="rd-navbar-toggle" data-rd-navbar-toggle=".rd-navbar-nav-wrap"><span></span></button>
                  <!-- RD Navbar Brand-->
                  <div class="rd-navbar-brand"><a class="brand" href="http://localhost:8080/EasyPay/view/index-2.html"><img class="brand-logo-dark" src="<%=request.getContextPath() %>/view/images/logo-200x45.png" alt="" width="200" height="45"/><img class="brand-logo-light" src="<%=request.getContextPath() %>/view/images/logo-200x45.png" alt="" width="200" height="45"/></a>
                  </div>
                </div>
                <div class="rd-navbar-main-element">
                  <div class="rd-navbar-nav-wrap">
                    <!-- RD Navbar Nav-->
                    <ul class="rd-navbar-nav">
                      <li class="rd-nav-item "><a class="rd-nav-link" href="http://localhost:8080/EasyPay/view/index-2.html">Acceuil</a>
                      </li>
                      <li class="rd-nav-item "><a class="rd-nav-link" href="http://localhost:8080/EasyPay/view/index-2.html">A propos</a>
                      </li>
                      <li class="rd-nav-item"><a class="rd-nav-link" href="#">Services</a>
                        <!-- RD Navbar Dropdown-->
                        <ul class="rd-menu rd-navbar-dropdown">
                          <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="../easypay/NouvelleTransactionClient">Transfert d'argent</a></li>
                        </ul>
                      </li>

                      <li class="rd-nav-item "><a class="rd-nav-link" href="http://localhost:8080/EasyPay/view/contacts.html">Contacts</a>
                      </li>
                  <li class="rd-nav-item active"><a class="rd-nav-link" href="../easypay/Login">Authentification</a>
                      </li>
                    </ul>
                  </div>
                  <!-- RD Navbar Search-->
                  <div class="rd-navbar-search">
                    <button class="rd-navbar-search-toggle rd-navbar-fixed-element-1" data-rd-navbar-toggle=".rd-navbar-search"><span></span></button>
                    <form class="rd-search" action="search-results.html" data-search-live="rd-search-results-live" method="GET">
                      <div class="form-wrap">
                        <label class="form-label" for="rd-navbar-search-form-input">Rechercher..</label>
                        <input class="rd-navbar-search-form-input form-input" id="rd-navbar-search-form-input" type="text" name="s" autocomplete="off">
                        <div class="rd-search-results-live" id="rd-search-results-live"></div>
                      </div>
                      <button class="rd-search-form-submit mdi mdi-magnify" type="submit"></button>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </nav>
        </div>
      </header>
      <!-- Swiper-->
          <div class="page-content text-center">
            <div class="container">
              <div class="row justify-content-center">
                <div class="col-md-10 col-lg-8 col-xl-4">
                  <!-- Tabs-->
                  <div class="tabs-custom tabs-horizontal tabs-line" id="tabs-1">
                    <!-- Nav tabs-->
                    <ul class="nav nav-tabs nav-tabs-inline">
                      <li class="nav-item" role="presentation"><a class="nav-link active" href="#tabs-1-1" data-toggle="tab">Connexion</a></li>
                      <li class="nav-item" role="presentation"><a class="nav-link" href="#tabs-1-2" data-toggle="tab">Inscription</a></li>
                    </ul>
                    <!-- Tab panes-->
                    <div class="tab-content">
                      <div class="tab-pane fade show active" id="tabs-1-1">
                        <h3>Connexion</h3>
                        <!-- RD Mailform-->
                        <form class="rd-form form-lg rd-mailform" action="easypay/authentification">
                          <div class="form-wrap">
                            <input class="form-input" id="login-username" type="text" name="username1" data-constraints="">
                            <label class="form-label" for="login-username">Nom d'Utilisateur</label>
                          </div>
                          <div class="form-wrap">
                            <input class="form-input" id="login-password" type="password" name="password" data-constraints="">
                            <label class="form-label" for="login-password">Mot de Passe</label>
                          </div>
                          <button class="button button-lg button-round button-block button-primary" type="submit">Connexion</button>
                        </form>
                        <div class="group-sm group-sm-justify group-middle social-items"><span>or use</span><a class="icon icon-lg icon-gray-100 novi-icon fa fa-facebook" href="#"></a><a class="icon icon-lg icon-gray-100 novi-icon fa fa-twitter" href="#"></a></div>
                      </div>
                      <div class="tab-pane fade" id="tabs-1-2">
                        <h3>Inscription</h3>
                        <!-- RD Mailform-->
                        <form class="rd-form form-lg rd-mailform" action="easpay/NouveauClient">
                           <div class="form-wrap">
                            <input class="form-input" id="register-nom" type="text" name="nom" data-constraints="">
                            <label class="form-label" for="register-nom">Nom</label>
                          </div>
                           <div class="form-wrap">
                            <input class="form-input" id="register-prenom" type="text" name="prenom" data-constraints="">
                            <label class="form-label" for="register-prenom">Prénom</label>
                          </div>
                          <div class="form-wrap">
                            <input class="form-input" id="register-username" type="text" name="login" data-constraints="">
                            <label class="form-label" for="register-username">Nom d'Utilisateur</label>
                          </div>
                          <div class="form-wrap">
                            <input class="form-input" id="register-email" type="email" name="email" data-constraints="@Email ">
                            <label class="form-label" for="register-email">E-mail</label>
                          </div>
                           <div class="form-wrap">
                            <input class="form-input" id="cin" type="text" name="cin" data-constraints="">
                            <label class="form-label" for="cin">Cin</label>
                          </div>
                            <div class="form-wrap">
                            <input class="form-input" id="register-telephone" type="text" name="tel" data-constraints="">
                            <label class="form-label" for="register-telephone">Téléphone</label>
                          </div>
                          <div class="form-wrap">
                            <input class="form-input" id="register-password" type="password" name="pass" data-constraints="">
                            <label class="form-label" for="register-password">Mot de Passe</label>
                          </div>
                          <div class="form-wrap">
                            <input class="form-input" id="register-confirm-password" type="password" name="confirm-password" data-constraints="">
                            <label class="form-label" for="register-confirm-password">Confirmer Mot de Passe</label>
                          </div>
                          <div class="form-wrap">
                            <input class="form-input" id="register-adresse" type="text" name="adresse" data-constraints="">
                            <label class="form-label" for="register-adresse">Adresse</label>
                          </div>
     
                          <div class="">
                            <select class="form-input" name="agence" id="agence" >
                            
                              <% for( Agence t : listes){ %>                                     
  <option value="<%=t.getNomagence()%>"><%=t.getNomagence()%></option>
<% } %>

</select>
                          </div>







                         
                          <button class="button button-lg button-round button-block button-primary" type="submit">s'inscrire</button>
                        </form>
                        <div class="group-sm group-sm-justify group-middle social-items"><span>or use</span><a class="icon icon-lg icon-gray-100 novi-icon fa fa-facebook" href="#"></a><a class="icon icon-lg icon-gray-100 novi-icon fa fa-twitter" href="#"></a></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="page-footer">
            <div class="container">
              <!-- Rights-->
              <p class="rights"><span>&copy;&nbsp; </span><span class="copyright-year"></span><span>&nbsp;</span><span>All rights reserved</span><span>.&nbsp;</span><a href="privacy-policy.html">Easy</a></p>
            </div>
          </div>
        </div>
      </section>
    </div>
    <!-- PANEL-->
    <!-- Global Mailform Output-->
    <div class="snackbars" id="form-output-global"></div>
    <!-- Javascript-->
    <script src="<%=request.getContextPath() %>/view/js/core.min.js"></script>
    <script src="<%=request.getContextPath() %>/view/js/script.js"></script>
  </body><!-- Google Tag Manager --><noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-P9FT69"height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript><script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start': new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src='//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);})(window,document,'script','dataLayer','GTM-P9FT69');</script><!-- End Google Tag Manager -->
</html>