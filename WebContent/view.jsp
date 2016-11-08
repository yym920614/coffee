<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="org.coffee.service.*" import="org.coffee.domain.*"
	import="java.util.*" import="org.coffee.util.*"%>
<%@include file="header.jsp"%>
<%
	if (session.getAttribute("LOGIN") == null) {
%>
<script>
	alert("로그인 후에 이용 가능합니다 ");
	parent.location.href="/login.jsp"
</script>
<%
		return;
	}
%>
<%
	String cnoStr = request.getParameter("cno");
	Integer cno = null;

	CoffeeVO vo = new CoffeeVO();
	List<BoardVO> arr = new ArrayList<>();

	Object objLogin = session.getAttribute("LOGIN");
	String userid = objLogin.toString();
	MemberVO mvo = new MemberVO();

	try {
		cno = Integer.parseInt(cnoStr);
		vo = CoffeeService.INSTANCE.read(cno);
		arr = BoardService.INSTANCE.read(cno);
		Cookie ck = new Cookie("COFFEE", cnoStr);
		response.addCookie(ck);
	} catch (Exception e) {
		response.sendRedirect("/view.jsp?error=none");
		return;
	}
%>


<style>
.coffe-info {
	border: 1px solid black;
	padding-top: 10px;
	text-align: left;
	list-style-type: none;
	padding-bottom: 10px;
	width: 100%;
	heigh: 100%;
}
</style>



<section id="coffee">
	<div class="container">
		<div class="row">

			<div class="col-lg-12 text-center">
				<h2>Detail View</h2>
				<hr class="star-primary">

				<div class="col-xs-6 coffee-item">

					<img src="img/coffee/<%=cno%>.png"
						class="img-responsive img-centered" alt="">
				</div>


				<div class="col-xs-6 coffee-item">
					<form role="form" action="order.jsp?userid=<%=userid%>"
						method="post">
						<div class="row" style="height: auto;">
							<div class="col-xs-6">
								<ul class="list-inline coffee-info">
									<li>상 품 명 :</li>
									<li><%=vo.getCname()%></li>
								</ul>
								<ul class="list-inline coffee-info">
									<li>가 &nbsp; &nbsp;격 :</li>
									<li><%=vo.getPrice()%></li>
								</ul>
								<ul class="list-inline coffee-info">
									<li>수 &nbsp; &nbsp;량 :</li>
									<li><input type="number" name="count" min="1" max="9"
										size="100" value="1">



										<li>
                        
								</ul>
                     </div>
                  </div>
                  <div class="row">
                     <button type="submit"
								class="btn btn-success btn-lg">Order</button>
                  </div>
               </form>

            </div>
         </div>
      </div>
   </div>


   <input type="button" class="btn btn-success btn-lg"
		onclick=" location='list.jsp'" value="Cancel">
   <hr />


   <div class="container">
      <div class="row">
         <div class="col-lg-8 col-lg-offset-2">

            <ul class="list-inline coffee-info">
               <li><h3>상품 설명 :</h3></li>
               <br>
               <li><%=vo.getCinfo()%></li>
            </ul>
         </div>
      </div>
   </div>
   <hr />
<div class="container">
											<div class="row">
			<div class="col-lg-6 col-lg-offset-2">
				<form action="viewAction.jsp" method="get">
					<h5 align="left">100자평</h5>
					<input type="text" name="content" size="70"><input
															type="submit" width="1000px" value="보내기">
				</form>
			</div>
		</div>
	</div>
	<hr />
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<ul class="list-group">
					<!-- regdate 역순으로 cno번호로 조회 -->
					<li><h3>Comment</h3></li>

					<%
						for (BoardVO bvo : arr) {
					%>
					<div class="menu">
						<li class="list-group-item"><b><%=bvo.getUserid()%></b></li>
						<li class="list-group-item"><%=bvo.getContent()%></li>
						<li class="list-group-item"><h6><%=bvo.getRegdate()%></h6></li> <br>
					</div>
					<%
						}
					%>
				</ul>
			</div>
		</div>
	</div>
	<hr />

									</section>


<%@include file="footer.jsp"%>