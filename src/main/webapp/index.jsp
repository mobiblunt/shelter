<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="false"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <link href="<c:url value='/resources/css/style.css' />" rel="stylesheet"></link>
        <link href="<c:url value='/resources/vendor/bootstrap/css/bootstrap.min.css' />" rel="stylesheet">
        <link href="<c:url value='/resources/vendor/font-awesome/css/font-awesome.min.css' />" rel="stylesheet" type="text/css">
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
        <link href="<c:url value='/resources/vendor/magnific-popup/magnific-popup.css' />" rel="stylesheet">
        <link href="<c:url value='/resources/vendor/jquery-ui/jquery-ui.min.css' />" rel="stylesheet" type="text/css"/>
        
        <title>Bed n Shelter</title>
    </head>

    <body id="page-top">

    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">Bednshelter</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a class="page-scroll" href="#about">About</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#contact">Become A Host</a>
                    </li>
                    <li>
                        <a href="<c:url value='/newuser' />">Join</a>
                    </li>
                    <li>
                        <a href="<c:url value='/login'/>"> Login</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
    <div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog modal-sm">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title" style="text-align: center">Login</h4>
				</div>
				<div class="modal-body">


					<form>
					
					<div class="form-group has-feedback">
					
						<input type="text" class="form-control" name="username" placeholder="username"></input>

					</div>
					<div class="form-group">

						
						<input type="text" class="form-control" placeholder="Password"></input>
					</div>
					<button action="display" class="btn btn-success btn-block">Log In</button>
					<br>
					<br>
					<p style="text-align:center">Dont have an account? <a data-dismiss="modal" data-toggle="modal" data-target="#myModal2" href="#">Sign Up</a></p>
				<form>

			</div>


		</div>
	</div>
        
  </div>
  <div class="modal fade" id="myModal2" role="dialog">
  	<div class="modal-dialog">

  		<!-- Modal content-->
  		<div class="modal-content">
  			<div class="modal-header">
  				<button type="button" class="close" data-dismiss="modal">&times;</button>
  				<h4 class="modal-title" style="text-align: center">Register</h4>
  			</div>
  			<div class="modal-body">
                            <form:form modelAttribute="user" method="POST" enctype="utf8">
  				
  				<div class="form-group input-group">
  					<span class="input-group-addon"><span class="glyphicon glyphicon-user"/></span></span>
  					<input type="text" class="form-control" placeholder="Firstname"></input></div>

  					<div class="form-group input-group">
  						<span class="input-group-addon"><span class="glyphicon glyphicon-user"/></span></span>
  						<input type="text" class="form-control" placeholder="Lastname"></input></div>
                                                <div class="form-group input-group">
  							<span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
  							<input type="text" class="form-control" placeholder="Gender"></input></div>
                            <div class="form-group input-group">
                            <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
                            <input type="text" name="dateOfBirth" id="dateOfBirth" class="form-control datepicker" placeholder="Date Of Birth"></input></div>
                            <div class="form-group input-group">
  							<span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
  							<input type="text" class="form-control" placeholder="Email"></input></div>
  							<div class="form-group input-group">
  								<span class="input-group-addon"><span class="glyphicon glyphicon-lock"/></span></span>
  								<input type="password" class="form-control" placeholder="Password"></input></div>
  								<div class="form-group input-group">
  									<span class="input-group-addon"><span class="glyphicon glyphicon-lock"/></span></span>
  									<input type="password" class="form-control" placeholder="Confirm Password"></input></div>
                                                                        <div class="form-group input-group">
  							<span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
  							<input type="text" class="form-control" placeholder="Mobile Phone"></input></div>
                                                        <div class="form-group input-group">
  							<span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
  							<input type="text" class="form-control" placeholder="City"></input></div>
                                                        <div class="form-group input-group">
  							<span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
  							<input type="text" class="form-control" placeholder="State"></input></div>
                                                        <div class="form-group input-group">
  							<span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
  							<input type="text" class="form-control" placeholder="Country"></input></div>
  									<button class="btn btn-success btn-block">Sign up</button>
                                                                        Already Have an account? <a data-dismiss="modal" data-toggle="modal" data-target="#myModal"  href="#">Sign In</a>
  								</form:form>

  							</div>


  						</div>
  					</div>
  				</div>

    <header>
        <div class="header-content">
            <div class="header-content-inner">
                <h1 id="homeHeading">Lets lay your bed..</h1>
                <hr>
                <p>Find millions of accomodations all over the world!</p>
                <div class="input-group col-md-6" id="input">
								<input type="text" class="form-control input-lg"  placeholder="Where do you want to go?"/>
								<span class="input-group-btn"><button type="button" class="btn btn-success btn-lg"><span class="glyphicon glyphicon-search"></span></button></span>
							</div>
            </div>
        </div>
    </header>

    <section class="bg-primary" id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <h2 class="section-heading">We've got what you need!</h2>
                    <hr class="light">
                    <p class="text-faded">Search for suitable, secure and flexible accomodations and pay much less than hotel lodgings, no need to miss that job interview anymore because of expensive payments</p>
                    <a href="#services" class="page-scroll btn btn-default btn-xl sr-button">Get Started!</a>
                </div>
            </div>
        </div>
    </section>

    <section id="services">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Benefits</h2>
                    <hr class="primary">
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <img src="<c:url value='/resources/img/get-money.png' />" alt="" class="sr-icons"> 
                        <h3>Affordability</h3>
                        <p class="text-muted">Get access to more suitable alternatives to hotels</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <img src="<c:url value='/resources/img/time-is-money.png' />" alt="" class="sr-icons"> 
                        <h3>Flexibility</h3>
                        <p class="text-muted">We provide you with options to choose suitable accomodations based on the duration of your stay</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <img src="<c:url value='/resources/img/bed.png' />" alt="" class="sr-icons">
                        <h3>Unlimited access</h3>
                        <p class="text-muted">Gain unlimited access to available listings whenever you need one</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        
                        <img src="<c:url value='/resources/img/house.png' />" alt="" class="sr-icons">
                        <h3>Security</h3>
                        <p class="text-muted">We offer you accommodations from only verified hosts.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="no-padding" id="portfolio">
        <div class="container-fluid">
            <div class="row no-gutter popup-gallery">
                <div class="col-lg-4 col-sm-6">
                    <a href="<c:url value='/resources/img/bed1.png' />" class="portfolio-box">
                        <img src="<c:url value='/resources/img/bed1.png' />" class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                    LAGOS
                                </div>
                                <div class="project-name">
                                    Bednshelter
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="<c:url value='/resources/img/bedi4.png' />" class="portfolio-box">
                        <img src="<c:url value='/resources/img/bedi4.png' />" class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                    ABUJA
                                </div>
                                <div class="project-name">
                                    
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="<c:url value='/resources/img/bed5.png' />" class="portfolio-box">
                        <img src="<c:url value='/resources/img/bed5.png' />" class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                    PORT HARCOURT
                                </div>
                                <div class="project-name">
                                    
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="<c:url value='/resources/img/bed6.png' />" class="portfolio-box">
                        <img src="<c:url value='/resources/img/bed6.png' />" class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                    CALABAR
                                </div>
                                <div class="project-name">
                                    
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="<c:url value='/resources/img/bed7.png' />" class="portfolio-box">
                        <img src="<c:url value='/resources/img/bed7.png' />" class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                    KANO
                                </div>
                                <div class="project-name">
                                    
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="<c:url value='/resources/img/bed8.png' />" class="portfolio-box">
                        <img src="<c:url value='/resources/img/bed8.png' />" class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                    KADUNA
                                </div>
                                <div class="project-name">
                                    
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <aside class="bg-dark">
        <div class="container text-center">
            <div class="call-to-action">
                <h2>What are you waiting for?</h2>
                <a href="#" class="btn btn-default btn-xl sr-button">Join Now!</a>
            </div>
        </div>
    </aside>

    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <h2 class="section-heading">Let's Get In Touch!</h2>
                    <hr class="primary">
                    <p>Need information about becoming a host? That's great! Give us a call or send us an email and we will get back to you as soon as possible!</p>
                </div>
                <div class="col-lg-4 col-lg-offset-2 text-center">
                    <i class="fa fa-phone fa-3x sr-contact"></i>
                    <p>0800-456-6789</p>
                </div>
                <div class="col-lg-4 text-center">
                    <i class="fa fa-envelope-o fa-3x sr-contact"></i>
                    <p><a href="mailto:chimobi.ejiofor@gmail.com">feedback@bednshelter.com</a></p>
                </div>
            </div>
        </div>
    </section>

    
    <script src="<c:url value='/resources/vendor/jquery/jquery.min.js' />"></script>
    <script src="<c:url value='/resources/vendor/bootstrap/js/bootstrap.min.js' />"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="<c:url value='/resources/vendor/scrollreveal/scrollreveal.min.js' />"></script>       
    <script src="<c:url value='/resources/vendor/magnific-popup/jquery.magnific-popup.min.js' />"></script>
    <script src="<c:url value='/resources/vendor/jquery-ui/jquery-ui.min.js' />" type="text/javascript"></script>
    <script src="<c:url value='/resources/js/main.js' />"></script>

</body>
</html>
