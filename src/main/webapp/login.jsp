<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<!-- Required meta tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta charset="UTF-8">
	<title>로그인(login)</title>
	
	<link rel="stylesheet" href="./css/bootstrap.min.css">
	<link rel="icon" href="img/image2.png">
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
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">로그인</h1>
		</div>
	</div>
	
	<div class="comntainer" align="center">
		<div class="col-md-4 col-md-offset-4">
			<h3 class="form-signin-heading">Please Sign in</h3>
			
			<%									/* 로그인 인증에 실패했을 때 작동하는 코드 */
				String error = request.getParameter("error");
				if(error != null) {				/* 에러가 났다는 의미 */
					out.println("<div class='alert alert-danger'>");
					out.println("아이디와 비밀번호를 확인해 주세요");
					out.println("</div>");
				}
			%>
			<form action="j_security_check" class="form-signin" method="post" >
				<div class="form_group">															<!-- 아이디를 입력하는 부분 -->
					<label for="inputUserName" class="sr-only">User Name</label>					<!-- class="sr-only" 출력을 숨겨줌 -->
					<input type="text" class="form-control" placeholder="ID" name="j_username" required autofocus />
				</div>
				
				<div class="form_group">															<!-- 비밀번호를 입력하는 부분 -->
					<label for="inputPassword" class="sr-only">Password</label>						<!-- class="sr-only" 출력을 숨겨줌 -->
					<input type="password" class="form-control" placeholder="Password" name="j_password" required />
				</div>
				<button class="btn btn-lg btn-success btn-block" type="submit">로그인</button>		<!-- btn-lg버튼크기, btn-seccess초록색 -->
				<a href="index.jsp" class="btn btn-lg btn-success btn-block">로그인</a>
			</form>
			<h5>--------------------------------------------------------------------------------------------</h5>
			<a href="#" class="btn btn-lg btn-info btn-block" >ID, PASSWORD 찾기</a>
			<a href="joinMember.jsp" class="btn btn-lg btn-primary btn-block" style="margin-bottom: 50px;" >회원가입</a>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
	
</body>
</html>