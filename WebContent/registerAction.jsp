<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="org.coffee.domain.*"%>
<%@ page import="org.coffee.service.*"%>
<%
	MemberVO vo = new MemberVO();

	request.setCharacterEncoding("UTF-8");

	String userid = request.getParameter("userid");
	String userpw = request.getParameter("userpw");
	String uname = request.getParameter("uname");
	String phonenum = request.getParameter("phonenum");
	String address = request.getParameter("address");

	vo.setUserid(userid);
	vo.setUserpw(userpw);
	vo.setUname(uname);
	vo.setPhoneNum(phonenum);
	vo.setAddress(address);


	String result =	MemberService.INSTANCE.create(vo);
%>

<script>
<% if(result.equals("1")) {  %>
	alert("Welcome!");
<%session.setAttribute("LOGIN", userid);%>
	self.location = "/index.jsp";
<% } else {  %>
alert('이미 가입한 회원입니다');
self.location = "/register.jsp";
<% } %>
</script>