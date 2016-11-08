<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import="org.coffee.service.*" import="org.coffee.domain.*"
   import="java.util.*" import="org.coffee.util.*"%>

<%


   /* int pageNum = CookieUtil.getNum(request.getParameter("page"), 1); */
%>

<%@include file="header.jsp"%>


<section id="coffee">
<br>
<br>
<br>
<br>
<br>
   <div class="container">
      <div class="row">
         <div class="col-lg-12 text-center">
            <h2>Coffee List</h2>
            <hr class="star-primary">
         </div>
      </div>
      <div class="row">
         <%
            for (int cno = 1 ; cno<=6 ; cno++) {
         %>
         <div class="col-sm-4 coffee-item">
            <a href='view.jsp?cno=<%=cno%>' class="coffee-link"
               data-toggle="modal">
               <div class="caption">
                  <div class="caption-content">
                     <i class="fa fa-search-plus fa-3x"></i>
                  </div>
               </div> <img src="img/coffee/<%=cno%>.png" class="img-responsive" alt="">
            </a>
         </div>
         <%
            }
         %>

      </div>
   </div>
</section>
<%


   /* int pageNum = CookieUtil.getNum(request.getParameter("page"), 1); */
%>

<%@include file="footer.jsp"%>