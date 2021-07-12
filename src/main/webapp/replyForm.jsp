<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
	request.setCharacterEncoding("utf-8");
%>    


<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>답글쓰기</title>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript">
		function readURL(input) {
			if(input.files && input.files[0]) {			//input 태그에 첫번째 선택파일이 있을때
				var reader = new FileReader();
				reader.onload = function(e) {
					$('#preview').attr('src', e.target.result);		// input file로 이미지 파일을 선택시 	id가 preview인 <img>태그에 src속성 값에 이미지를 바로 보이도록 변경 
				}
				reader.readAsDataURL(input.files[0]);				// reader가 File내용을 읽어 DataURL형식의 문자열로 저장
			}
		}
		function backToList(obj) {
			obj.action ="${contextPath}/board/listArticles.do"
			obj.submit();
		}		
	</script>
</head>
<body>
	<h1 style="text-align: center;">답글쓰기</h1>
	<form action="${contextPath}/board/addReply.do" name="frmReply" method="post" enctype="multipart/form-data">
		<table align="center">
			<tr>
				<td align="right">글쓴이 :&nbsp; </td>
				<td><input type="text" size="5" value="lee" disabled /></td>
			</tr>
			<tr>
				<td align="right">글제목 :&nbsp; </td>
				<td><input type="text" size="70" maxlength="500" name="title" /></td>
			</tr>			
			<tr>
				<td align="right" valign="top">글내용 :&nbsp; </td>
				<td><textarea rows="10" cols="65" maxlength="4000" name="content"></textarea></td>
			</tr>
			<tr>
				<td align="right">이미지파일 첨부 : </td>
				<td><input type="file" name="imageFileName" onchange="readURL(this);" /></td>
				<td><img alt="미리보기" src="#" width="200" height="200" id="preview" /></td>
			</tr>								
			<tr>
				<td align="right"></td>
				<td>
					<input type="submit" value="답글반영하기" />
					<input type="button" value="취소"  onclick="backToList(this.form)" />
				</td>
			</tr>
						
		</table>
	</form>
</body>
</html>

































