<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>신규 회원 가입</title>
	
	<style>
        #wrap{
        	width:530px;
            margin-left:auto; 
            margin-right:auto;
        }
        
        table{
            border:3px solid skyblue
        }
        
        td{
            border:1px solid skyblue
        }
        
        
        #title{
            background-color:skyblue;
            width:10%;
        }
        
    </style>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<div id="wrap" align="center">
        <br><br>
        <b><font size="10" color="skyblue">회원가입</font></b>
        <br><br><br>
        
		<form action="joinOk.jsp" method="post">
			<table>
				<tr>
                    <td id="title">아이디</td>
                    <td>
                        <input type="text" name="id" placeholder="아이디을 입력하세요" required/>
                        <input type="button" value="중복확인" >    
                    </td>
                </tr>
                
                <tr>
                    <td id="title">비밀번호</td>
                    <td>
                        <input type="password" name="pwd" placeholder="비밀번호을 입력하세요" required/>
                    </td>
                </tr>
                
                <tr>
                    <td id="title">비밀번호 확인</td>
                    <td>
                        <input type="password" name="pwd" placeholder="비밀번호을 입력하세요" required/>
                    </td>
                </tr>
			
				<tr>
                    <td id="title">이름</td>
                    <td>
                        <input type="text" name="name" placeholder="이름을 입력하세요" required/>
                    </td>
                </tr>
                
                <tr>
                	<td id="title">이메일</td>
                	<td>
                		<input type="text" name="email" placeholder="이메일을 입력하세요"/>@
                        <select name="email2">
                            <option>naver.com</option>
                            <option>daum.net</option>
                            <option>gmail.com</option>
                            <option>nate.com</option>                        
                            <option>직접입력하기</option>
                        </select>
                	</td>
                </tr>
                
                <tr>
                	<td id="title">핸드폰</td>
                	<td>
	                	<select name="phonenum1">
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
						</select>-
						<input type="number" name="phonenum2" />-
						<input type="number" name="phonenum3" />
					</td>
                </tr>
                
                <tr>
                	<td id="title">주소</td>
                	<td>
                		<input type="number" name="address_zc" size="5" placeholder="우편번호"/><br/>
						<input type="text" name="address_rn" size="50" placeholder="도로명 주소"/><br/>
						<input type="text" name="address_dt" size="50" placeholder="상세주소"/>
                	</td>
                </tr>
                
                <tr></tr>
                <tr>
                    <td id="title">성별</td>
                    <td>
                        <input type="radio" name="gender" value="남" checked>남
                        <input type="radio" name="gender" value="여" checked>여
                    </td>
                </tr>
                
			
			</table>
			<input type="submit" value="가입" />&nbsp;&nbsp;&nbsp;
			<input type="reset" value="초기화"/>
		</form>
	</div>
</body>
</html>