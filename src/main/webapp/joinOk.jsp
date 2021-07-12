<%@page import="java.sql.Date"%>
<%@page import="kr.or.shi.userDT.UserDAO"%>
<%@page import="kr.or.shi.userDT.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
	
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String email = request.getParameter("email");
	String email2 = request.getParameter("email2");
	String address_zc = request.getParameter("address_zc");
	String address_rn = request.getParameter("address_rn");
	String address_dt = request.getParameter("address_dt");
	String gender = request.getParameter("gender");
	String phoneNum1 = request.getParameter("phoneNum1");
	String phoneNum2 = request.getParameter("phoneNum2");
	String phoneNum3 = request.getParameter("phoneNum3");
	/* 
	out.println(username);
	out.println(id);
	out.println(pw);
	out.println(phone1);
	out.println(phone2);
	out.println(phone3);
	out.println(gender); */
	
	UserDTO dto = new UserDTO();
	UserDAO dao = new UserDAO();
	
	//클라이언트가 입력한 회원가입정보를 DTO객체에 저장하는 코드
	dto.setName(name);
	dto.setId(id);
	dto.setPwd(pwd);
	dto.setEmail(email);
	dto.setAddress_zc(address_zc);
	dto.setAddress_rn(address_rn);
	dto.setAddress_dt(address_dt);
	dto.setGender(gender);
	dto.setPhoneNum1(phoneNum1);
	dto.setPhoneNum2(phoneNum2);
	dto.setPhoneNum3(phoneNum3);
	
	dao.addMember(dto);
	response.sendRedirect("memberList.jsp");
%>