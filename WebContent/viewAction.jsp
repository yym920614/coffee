<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import="org.coffee.service.*" import="org.coffee.domain.*"
   import="org.coffee.persistence.*" import="java.util.*"
   import="org.coffee.util.*"%>

<%
   request.setCharacterEncoding("UTF-8");
   String userid = (String) session.getAttribute("LOGIN");
   Cookie ck = CookieUtil.findCookie("COFFEE", request);
   
   String nno = ck.getValue();
   int cno = Integer.parseInt(nno);
   
   BoardVO bvo = new BoardVO();
   
   String content = request.getParameter("content");
   bvo.setUserid(userid);
   bvo.setCno(cno);
   bvo.setContent(content);
   
   System.out.println(bvo.toString());
   BoardService.INSTANCE.create(bvo);
%>
<%
	if (session.getAttribute("LOGIN") == null) {
%>
<script>
	alert("로그인 후에 이용 가능합니다 ");
	parent.location.href="/login.jsp"
</script>
<%
	} else if (content == "") {
%>
<script>
alert("상품평을 입력해주세요");
parent.location.href="/view.jsp?cno=<%=cno%>"
</script>
<% } else { %>		
<script>
	alert("상품평이 성공적으로 등록되었습니다.");
	parent.location.href="/view.jsp?cno=<%=cno%>"
</script>
<% } %>