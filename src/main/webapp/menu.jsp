<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<style type="text/css">
		/* The Modal (background) */
		.searchModal {
		display: none; /* Hidden by default */
		position: fixed; /* Stay in place */
		z-index: 10; /* Sit on top */
		left: 0;
		top: 0;
		width: 100%; /* Full width */
		height: 100%; /* Full height */
		overflow: auto; /* Enable scroll if needed */
		background-color: rgb(0,0,0); /* Fallback color */
		background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
		}
		/* Modal Content/Box */
		.search-modal-content {
		background-color: #fefefe;
		margin: 15% auto; /* 15% from the top and centered */
		padding: 20px;
		border: 1px solid #888;
		width: 70%; /* Could be more or less, depending on screen size */
		}
</style>
	<script>
		jQuery(document).ready(function () {
		$("#modal").show();
		});
		function closeModal() {
		$('.searchModal').hide();
		};
	</script>
	<title>Insert title here</title>
	<link rel="stylesheet" href="./css/bootstrap.min.css">
	<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
	<link rel="icon" href="./img/image2.png">
    <!-- Bootstrap CSS -->
    <!-- animate CSS -->
    <link rel="stylesheet" href="css/animate.css">
    <!-- owl carousel CSS -->
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <!-- themify CSS -->
    <link rel="stylesheet" href="css/themify-icons.css">
    <!-- flaticon CSS -->
    <link rel="stylesheet" href="css/flaticon.css">
    <!-- fontawesome CSS -->
    <link rel="stylesheet" href="fontawesome/css/all.min.css">
    <!-- magnific CSS -->
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/gijgo.min.css">
    <!-- niceselect CSS -->
    <link rel="stylesheet" href="css/nice-select.css">
    <!-- slick CSS -->
    <link rel="stylesheet" href="css/slick.css">
    <!-- style CSS -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
	<header class="main_menu">
        <div class="main_menu_iner">
            <div class="container">
                <div class="row align-items-center ">
                    <div class="col-lg-12">
                        <nav class="navbar navbar-expand-lg navbar-light justify-content-between">
                            <a class="navbar-brand" href="index.jsp"> <img src="./img/image2.png" alt="logo"> </a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse"
                                data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>

                            <div class="collapse navbar-collapse main-menu-item justify-content-center"
                                id="navbarSupportedContent">
                                <ul class="navbar-nav">
                                    <li class="nav-item">
                                        <a class="nav-link" href="listArticles.jsp">????????????</a>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                            role="button" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                            ?????????
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                            <a class="dropdown-item" href="#">???????????????</a>
                                            <a class="dropdown-item" href="#">?????? ?????????</a>
                                        </div>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                            role="button" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                            ??????
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                            <a class="dropdown-item" href="#">??????</a>
                                            <a class="dropdown-item" href="daegu.jsp">??????</a>
                                            <a class="dropdown-item" href="#">??????</a>
                                            <a class="dropdown-item" href="#">??????</a>
                                            <a class="dropdown-item" href="#">??????</a>
                                            <a class="dropdown-item" href="#">??????</a>
                                            <a class="dropdown-item" href="#">??????</a>
                                            <a class="dropdown-item" href="#">??????</a>
                                            <a class="dropdown-item" href="#">??????</a>
                                            <a class="dropdown-item" href="#">??????</a>
                                            <a class="dropdown-item" href="#">??????</a>
                                        </div>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="blog.html" id="navbarDropdown"
                                            role="button" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                            ????????????
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                            <a class="dropdown-item" href="blog.html">????????????</a>
                                            <a class="dropdown-item" href="single-blog.html">FAQ</a>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <!-- <a href="#" class="btn_1 d-none d-lg-block">????????????</a> -->
                            <form class="d-flex">
                                <a href="login.jsp">?????????</a>
                            </form>
                            
                            <form class="d-flex ml-5" >
                                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"><i class="fa fa-search" aria-hidden="true"></i></button>
                                 <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
								  <div class="modal-dialog modal-lg" role="document">
								    <div class="modal-content">
								      	<form role="search" method="get" id="search-form" action="./searchresult.jsp">
					                      <input type="search" placeholder="???????????? ???????????????." class="form-control"  value="" name="s" autocomplete="off" required  />
					                      <button type="button" class="btn btn-danger d-flex" >??????</button>
					                      <!-- <input type="hidden" value="article" name="post_type" id="post_type" /> -->
					                    </form>
								      
								    </div>
								  </div>
								</div>
                            </form>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </header>
</body>
</html>