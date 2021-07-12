<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="articlesList" value="${articleMap.articlesList }" />
<c:set var="totArticles" value="${articleMap.totArticles }" />
<c:set var="section" value="${articleMap.section }" />
<c:set var="pageNum" value="${articleMap.pageNum }" />


<%
	request.setCharacterEncoding("utf-8");
%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>공지사항</title>
	<style type="text/css">
		.class1 {text-decoration: none;}
		.class2 {text-align: center; font-size: 30px;}
		.no-line {text-decoration: none;}
		.sel-page {text-decoration: none; color: red;}
	</style>
	
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

<!-- ==========본문 시작========== -->
	<table align="center" border="1" width="80%">
		<tr height="10" align="center" bgcolor="">
			<th>글번호</th>
			<th>작성자</th>
			<th>제목</th>
			<th>작성일</th>
		</tr>
		
		<c:choose>
			<c:when test="${empty articlesList }">
				<tr height="10">
					<td colspan="4">
						<p align="center">
							<b><span style="font-size: 9pt;">등록된 글이 없습니다.</span></b>
						</p>
					</td>
				</tr>
			</c:when>
			
			<c:when test="${!empty articlesList  }">
				<c:forEach var="article" items="${articlesList }" varStatus="articleNum">			<!--varStatus :반복상태변수이름 --속성들 index, count, first, last  -->
					<tr align="center">
						<td width="5%">${article.articleNo }</td>
						<td width="10%">${article.id }</td>
						<td width="35%" align="left">
							<span style="padding-right: 30px;"></span>
							<c:choose>
								<c:when test="${article.level > 1 }">
									<c:forEach begin="1" end="${article.level }" step="1">
										<span style="padding-left: 20px;"></span>
									</c:forEach>
									<span style="font-size: 12px; color: red">[답변]</span><a class="class1" href="${contextPath}/board/viewActicle.do?articleNo=${article.articleNo}">${article.title}</a>
								</c:when>
								<c:otherwise>
									<a class="class1" href="${contextPath}/board/viewActicle.do?articleNo=${article.articleNo}">${article.title}</a>
								</c:otherwise>
							</c:choose>
						</td>
						<td width="10%"><fmt:formatDate value="${article.writeDate }"/></td>
					</tr>
				</c:forEach>
			
			</c:when>
		</c:choose>
		
	</table>
	
	<div class="class2">
		<c:if test="${totArticles != null }">
			<c:choose>
				<c:when test="${totArticles > 100 }">			<!-- 글 개수가 100 초과인 경우 -->
					<c:forEach var="page" begin="1" end="10" step="1">
						
						<c:if test="${section > 1 && page == 1 }">
							<a class="no-line"  href="${contextPath}/board/listArticles.do?section=${section-1}&pageNum=${(section-1)*10 +1}">&nbsp; pre </a>
						</c:if>
						
						<a class="no-line" href="">${(section-1)*10 +page}</a>			<!-- 실제페이지 숫자표시 -->
						
						<c:if test="${page == 10 }">
							<a class="no-line" href="${contextPath}/board/listArticles.do?section=${section+1}&pageNum=${section*10 +1}">&nbsp; next </a>
						</c:if>						
						
					</c:forEach>
				</c:when>
				
				<c:when test="${totArticles == 100 }">			<!-- 등록된 글 개수가 100개인 경우 -->
					<c:forEach var="page" begin="1" end="10" step="1">
						<a class="no-line" href="#">${page}</a>
					</c:forEach>
				</c:when>
				
				<c:when test="${totArticles < 100 }">			<!-- 글 개수가 100 미만인 경우 -->
					<c:forEach var="page" begin="1" end="${totArticles/10 +1}" step="1">
						<c:choose >
							<c:when test="${page == pageNum}">
								<a class="sel-page" href="${contextPath}/board/listArticles.do?section=${section}&pageNum=${page}">${page}</a>
							</c:when>
							<c:otherwise>
								<a class="no-line" href="${contextPath}/board/listArticles.do?section=${section}&pageNum=${page}">${page}</a>
							</c:otherwise>
						</c:choose>
					</c:forEach>				
				</c:when>
				
			</c:choose>
		</c:if>
	</div>
	<a class="class1" href="${contextPath}/board/articleForm.do"><p class="class2">글쓰기</p></a>
	
	

    <!-- jquery plugins here-->
    <script src="js/jquery-1.12.1.min.js"></script>
    <!-- popper js -->
    <script src="js/popper.min.js"></script>
    <!-- bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- magnific js -->
    <script src="js/jquery.magnific-popup.js"></script>
    <!-- swiper js -->
    <script src="js/owl.carousel.min.js"></script>
    <!-- masonry js -->
    <script src="js/masonry.pkgd.js"></script>
    <!-- masonry js -->
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/gijgo.min.js"></script>
    <!-- contact js -->
    <script src="js/jquery.ajaxchimp.min.js"></script>
    <script src="js/jquery.form.js"></script>
    <script src="js/jquery.validate.min.js"></script>
    <script src="js/mail-script.js"></script>
    <script src="js/contact.js"></script>
    <!-- custom js -->
    <script src="js/custom.js"></script>
</body>
</html>































