<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="articlesList" value="${articleMap.articlesList }" />
<c:set var="totArticles" value="${articleMap.totArticles }" />
<c:set var="section" value="${articleMap.section }" />
<c:set var="pageNum" value="${articleMap.pageNum }" />



   <!-- articleForm.jsp --> 
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>게시판 만들기</title>

	 <link rel="icon" href="img/image2.png">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
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

<!-- 복붙시작1 -->
<!--::header part start::-->
   <header class="main_menu">
        <div class="sub_menu">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-sm-12 col-md-6">
                        
                    </div>
                    <div class="col-lg-6 col-sm-12 col-md-6">
                        <div class="sub_menu_social_icon">
                            <a href="#"><i class="flaticon-facebook"></i></a>
                            <a href="#"><i class="flaticon-twitter"></i></a>
                            <a href="#"><i class="flaticon-skype"></i></a>
                            <a href="#"><i class="flaticon-instagram"></i></a>
                            <span><i class="flaticon-phone-call"></i>010 - 3322 - 4999</a></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="main_menu_iner">
            <div class="container">
                <div class="row align-items-center ">
                    <div class="col-lg-12">
                        <nav class="navbar navbar-expand-lg navbar-light justify-content-between">
                            <a class="navbar-brand" href="index.jsp"> <img src="img/image2.png" alt="logo"> </a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse"
                                data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>

                            <div class="collapse navbar-collapse main-menu-item justify-content-center"
                                id="navbarSupportedContent">
                                <ul class="navbar-nav">
                                    <li class="nav-item">
                                        <a class="nav-link" href="listArticles.jsp">공지사항</a>
                                    </li>
                                  <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                            role="button" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                            게시판
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                            <a class="dropdown-item" href="#">자유게시판</a>
                                            <a class="dropdown-item" href="#">동행 구하기</a>
                                        </div>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                            role="button" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                            리뷰
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                            <a class="dropdown-item" href="#">서울</a>
                                            <a class="dropdown-item" href="#">대구</a>
                                            <a class="dropdown-item" href="#">부산</a>
                                            <a class="dropdown-item" href="#">대전</a>
                                            <a class="dropdown-item" href="#">광주</a>
                                            <a class="dropdown-item" href="#">인천</a>
                                            <a class="dropdown-item" href="#">경상</a>
                                            <a class="dropdown-item" href="#">전라</a>
                                            <a class="dropdown-item" href="#">경기</a>
                                            <a class="dropdown-item" href="#">강원</a>
                                            <a class="dropdown-item" href="#">제주</a>
                                        </div>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="blog.html" id="navbarDropdown"
                                            role="button" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                            고객센터
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                            <a class="dropdown-item" href="blog.html">문의사항</a>
                                            <a class="dropdown-item" href="single-blog.html">FAQ</a>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <a href="#" class="btn_1 d-none d-lg-block">로그인</a>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </header>
        <!-- Header part end-->
	<table border="0" align="center">
			<tr>
				<td align="right">글제목 : </td>
				<td colspan="2"><input type="text" size="62" maxlength="400" name="title" /></td>
			</tr>
			
			<tr>
				<td align="right">글내용 : </td>
				<td colspan="2"><textarea rows="30" cols="65" maxlength="4000" name="content"></textarea></td>
			</tr>

			<tr>
				<td align="right">이미지파일 첨부 : </td>
				<td colspan="2"><input type="file" name="imageFileName" onchange="readURL(this)" /></td>
				<td><img alt="미리보기" src="#" width="200" height="200" id="preview" /></td>
			</tr>
					
			<tr>
				<td align="left"></td>
				<td colspan="2">
					<input type="submit" value="글쓰기" />
					<input type="button" value="목록보기" onclick="backToList(this.form)" />
				</td>
			</tr>
		</table>

</body>
</html>