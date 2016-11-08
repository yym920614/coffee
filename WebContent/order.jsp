<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="org.coffee.service.*" import="org.coffee.domain.*"
   import="java.util.*" import="org.coffee.util.*"%>
	
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

<%@include file="header.jsp"%>

<%
   String countStr = request.getParameter("count");
   Integer count = null;
   count = Integer.parseInt(countStr);
   Cookie countCookie = new Cookie("COUNT", countStr);
   response.addCookie(countCookie);

   Cookie coffee = CookieUtil.findCookie("COFFEE", request);

   if (coffee == null) { //recent가 비어있으면
      coffee = new Cookie("COFFEE", "");
      response.addCookie(coffee); //쿠키 추가해줘
   }

   String value = coffee.getValue();
   int cno = Integer.parseInt(value);
   CoffeeVO cvo = new CoffeeVO();
   cvo = CoffeeService.INSTANCE.read(cno);

   Object objLogin = session.getAttribute("LOGIN");
   String userid = objLogin.toString();
   MemberVO vo = new MemberVO();
   vo = MemberService.INSTANCE.read(userid);
%>


<section id="contact">
   <div class="container">
      <div class="row">
         <div class="col-lg-12 text-center">
            <h2>order</h2>
            <hr class="star-primary">
         </div>
      </div>
      <div class="row">
         <div class="col-lg-8 col-lg-offset-2">
            
            <form name="sentMessage" id="contactForm" novalidate="">
               <div class="row control-group">
                  <div
                     class="form-group col-xs-12 floating-label-form-group controls">

                     <style>
ul {
   　　　overflow: auto;
   list-style-type: none;
}

li {
   display: inline;
   float: center;
   padding: 0 10px;
}
</style>

                     <ul>
                        <li style="line-height: 300%; padding: 0 60px;">상품정보</li>
                        <li style="line-height: 180%; padding: 0 200px;">수량</li>
                        <li style="line-height: 180%; padding: 0 10px;">가격</li>

                     </ul>

                     <div class="media" style="line-height: 180%; padding: 0 0px;">
                        <div class="media-left media-middle">

                           <img class="media-object"
                              src="img/coffee/<%=cvo.getCno()%>.png" width="120px"
                              height="200px">


                        </div>
                        <div class="media-body">
                           <h4 class="media-heading"><%=cvo.getCname()%></h4>

                        </div>
                        <div class="media-body"
                           style="line-height: 300%; padding: 0 200px;">
                           <h4 class="media-heading"><%=count%></h4>

                        </div>
                        <div class="media-body"
                           style="line-height: 300%; padding: 0 10px;">
                           <h4 class="media-heading"><%=cvo.getPrice()*count%></h4>

                        </div>
                     </div>

                     <div class="row control-group">
                        <div
                           class="form-group col-xs-12 floating-label-form-group controls">
                           <label>수령인</label> <input type="text" class="form-control"
                              placeholder="수령인" id="NAME" required=""
                              value="<%=vo.getUname()%>" data-validation-required-message="">
                           <p class="help-block text-danger"></p>
                        </div>
                     </div>

                     <div class="row control-group">
                        <div
                           class="form-group col-xs-12 floating-label-form-group controls">
                           <label>연락처</label> <input type="text" class="form-control"
                              placeholder="연락처" id="PHONE NUMBER"
                              value="<%=vo.getPhoneNum()%>" required=""
                              data-validation-required-message="">
                           <p class="help-block text-danger"></p>
                        </div>
                     </div>

                     <div class="row control-group">
                        <div
                           class="form-group col-xs-12 floating-label-form-group controls">
                           <label>주소</label> <input type="text" class="form-control"
                              placeholder="주소" id="ADDRESS" required=""
                              value="<%=vo.getAddress()%>"
                              data-validation-required-message="">
                           <p class="help-block text-danger"></p>
                        </div>
                     </div>

                     <br>
                     <div id="success"></div>
                     <div class="row">
                        <div class="form-group col-xs-6">
                           <button type="submit" class="btn btn-success btn-lg">Order</button>
                        </div>
                        <div class="form-group col-xs-6">
                           <button type="submit" class="btn btn-success btn-lg">Cancel</button>
                        </div>
                     </div>
            </form>
         </div>
      </div>
   </div>
</section>


<%@include file="footer.jsp"%>