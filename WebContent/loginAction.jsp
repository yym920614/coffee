<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.coffee.domain.*" import="org.coffee.service.*" import="org.coffee.persistence.*"%>

<% 
	request.setCharacterEncoding("UTF-8");

	String userid = request.getParameter("id");
	String userpw = request.getParameter("password");

	
	System.out.println("input userid : " + userid);
	System.out.println("input userpw : " + userpw);

	MemberVO vo = new MemberVO();
	
	vo.setUserid(userid);
	vo.setUserpw(userpw);
	
	String result = MemberService.INSTANCE.login(vo);
	System.out.println(vo);


	
%>

<script type="text/javascript">
<% if(result.equals("1")) {  %>
alert('Login Success!');
<% session.setAttribute("LOGIN", userid); %>
parent.location.href="/index.jsp";

<% } else {  %>
alert('로그인실패! 아이디와 비밀번호 확인좀하세욤');
parent.location.href="/login.jsp";
<% } %>
</script>
