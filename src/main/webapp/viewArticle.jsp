<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	request.setCharacterEncoding("utf-8");
%>    

<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>글상세보기</title>
	<style type="text/css">
		#tr_btn_modify {
			display: none;
		}
	</style>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript">
		function readURL(input) {
			if (input.files && input.files[0]) {							/* 이미지 파일 첨부 시 미리 보기 기능 */
				var reader = new FileReader();
				reader.onload = function(e) {
					$('#preview').attr("src", e.target.result);				/* e.target은 이벤트가 일어난 대상, 즉 input 자신을 가리킴*/
				}															/* result는 첨부파일들이 특수하게 가공된 URL을 출력해 줄것임. */
				reader.readAsDataURL(input.files[0]);
			}
		}
		
		function fn_enable(obj) {
			document.getElementById("title_modify").disabled=false;
			document.getElementById("content_modify").disabled=false;
			document.getElementById("imageFileName_modify").disabled=false;
			document.getElementById("tr_btn_modify").style.display="block"
			document.getElementById("tr_btn").style.display="none";
		}
		
		function fn_remove_article(url, articleNo) {
			var form = document.createElement("form");
			form.setAttribute("method", "post");
			form.setAttribute("action", url);
			
			var articleNoInput = document.createElement("input");
			articleNoInput.setAttribute("type", "hidden");
			articleNoInput.setAttribute("name", "articleNo");
			articleNoInput.setAttribute("value", articleNo);
			
			form.appendChild(articleNoInput);
			document.body.appendChild(form);
			form.submit();
		}
		
		function backToList(obj) {
			obj.action = "${contextPath}/board/listArticles.do"
			obj.submit();
		}
		
		function fn_modify_article(obj) {
			obj.action = "${contextPath}/board/modArticle.do"
			obj.submit();
		}
		
		function fn_reply_form(url, parentNo) {
			var form = document.createElement("form");
			form.setAttribute("method", "post");
			form.setAttribute("action", url);
			
			var parentNoInput = document.createElement("input");
			parentNoInput.setAttribute("type", "hidden");
			parentNoInput.setAttribute("name", "parentNo");
			parentNoInput.setAttribute("value", parentNo);
			
			form.appendChild(parentNoInput);
			document.body.appendChild(form);
			form.submit();
		}
	
	</script>
</head>
<body>
	<form action="${contextPath}" name="frmArticle" method="post" enctype="multipart/form-data">
		<table border="0" align="center">
			<tr>
				<td width="150" align="center" bgcolor="#FF9933">
					글번호
				</td>
				<td>
					<input type="text" value="${article.articleNo }" disabled />
					<input type="hidden" name="articleNo" value="${article.articleNo }" />
				</td>
			</tr>
			
			<tr>
				<td width="150" align="center" bgcolor="#FF9933">
					작성자 아이디
				</td>
				<td>
					<input type="text" value="${article.id }" name="writer" disabled />
				</td>
			</tr>
			
			<tr>
				<td width="150" align="center" bgcolor="#FF9933">
					제목
				</td>
				<td>
					<input type="text" value="${article.title }" name="title" id="title_modify" disabled />
				</td>
			</tr>
			
			<tr>
				<td width="150" align="center" bgcolor="#FF9933">
					내용
				</td>
				<td>
					<textarea rows="20" cols="60" name="content" id="content_modify" disabled>${article.content}</textarea>
				</td>
			</tr>
			
			<c:if test="${not empty article.imageFileName && article.imageFileName != 'null' }">
				<tr>
					<td width="150" align="center" bgcolor="#FF9933" rowspan="2">
						이미지
					</td>
					<td>
						<input type="hidden" name="originalFileName" value="${article.imageFileName }" />
						<img alt="사진" src="${contextPath}/download.do?articleNo=${article.articleNo}&imageFileName=${article.imageFileName}" id="preview" width="300"><br/>
					</td>
				</tr>
				<tr>
					<td>
						<input type="file" name="imageFileName" id="imageFileName_modify" disabled onchange="readURL(this);" />			<!-- 이미지 파일 선택 기능 -->
					</td>
				</tr>
			</c:if>
						
			<tr>
				<td width="20%" align="center" bgcolor="#FF9933">
					등록일자
				</td>
				<td>
					<input type="text" value='<fmt:formatDate value="${article.writeDate }"/>' disabled />
				</td>
			</tr>
			
			<tr id="tr_btn">
				<td colspan="2" align="center">
					<input type="button" value="수정하기" onclick="fn_enable(this.form)" />
					<input type="button" value="삭제하기" onclick="fn_remove_article('${contextPath}/board/removeArticle.do', ${article.articleNo })" />
					<input type="button" value="게시글목록" onclick="backToList(this.form)">
					<input type="button" value="답급달기" onclick="fn_reply_form('${contextPath}/board/replyForm.do', ${article.articleNo})" />   <!-- 요청명과 글번호를 전달함  -->
				</td>
			</tr>
			
			<!-- 수정하기 클릭시에 나타나는 두개 메뉴  -->
			<tr id="tr_btn_modify">
				<td colspan="2" align="center">
					<input type="button" value="수정반영하기"  onclick="fn_modify_article(frmArticle)" />
					<input type="button" value="취소" onclick="backToList(frmArticle)">
				</td>
			</tr>
												
		</table>
	</form>
</body>
</html>























