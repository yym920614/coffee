<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%@include file="header.jsp"%>


<section id="contact">
<br>
<br>
<br>
<br>
<br>
   <div class="container">
      <div class="row">
         <div class="col-lg-12 text-center">
            <h2>Join us</h2>
            <hr class="star-primary">
         </div>
      </div>
      <div class="row">
         <div class="col-lg-8 col-lg-offset-2">


            <form role="form" action="/registerAction.jsp" method="post">

               <div class="row control-group">
                  <div
                     class="form-group col-xs-12 floating-label-form-group controls">
                     <label>ID</label> <input type="text" class="form-control"
                        placeholder="ID" name="userid"
                        data-validation-required-message="Please enter your id">

                  </div>
               </div>

               <div class="row control-group">
                  <div
                     class="form-group col-xs-12 floating-label-form-group controls">
                     <label>PASSWORD</label> <input type="password"
                        class="form-control" placeholder="PASSWORD" name="userpw"
                        data-validation-required-message="Please enter your password">

                  </div>
               </div>
               
               <div class="row control-group">
                  <div
                     class="form-group col-xs-12 floating-label-form-group controls">
                     <label>NAME</label> <input type="text"
                        class="form-control" placeholder="NAME" name="uname"
                        data-validation-required-message="Please enter your Name">

                  </div>
               </div>
               
               <div class="row control-group">
                  <div
                     class="form-group col-xs-12 floating-label-form-group controls">
                     <label>PHONE NUM</label> <input type="text"
                        class="form-control" placeholder="PHONE NUM" name="phonenum"
                        data-validation-required-message="Please enter your phone num">

                  </div>
               </div>
               
               <div class="row control-group">
                  <div
                     class="form-group col-xs-12 floating-label-form-group controls">
                     <label>ADDRESS</label> <input type="text"
                        class="form-control" placeholder="ADDRESS" name="address"
                        data-validation-required-message="Please enter your address">

                  </div>
               </div>


               <br>
               <div class="row">
                  <div class="form-group col-xs-12">
                     <button type="submit" class="btn btn-success btn-lg">Sign up</button>
                  </div>
               </div>

            </form>

         </div>
      </div>
   </div>
</section>


<%@include file="footer.jsp"%>