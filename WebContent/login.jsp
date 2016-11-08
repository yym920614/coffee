<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="header.jsp"%>
<style>
#video {
	position: absolute;
	top: 0px;
	left: 0px;
	min-width: 100%;
	min-height: 100%;
	width: auto;
	height: auto;
	z-index: -1;
	overflow: hidden;
}
</style>

<section id="contact">
<br>
<br>
<br>
<br>
<br>

	<div class="container">

		<div class="row">



			<div class="col-lg-12 text-center">
				<h2>Login</h2>
				<hr class="star-primary">
			</div>
		</div>
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2">


				<form role="form" action="/loginAction.jsp" method="post">

					<div class="row control-group">
						<div
							class="form-group col-xs-12 floating-label-form-group controls">
							<label>ID</label> <input type="text" class="form-control"
								placeholder="ID" name="id"
								data-validation-required-message="Please enter your id">

						</div>
					</div>

					<div class="row control-group">
						<div
							class="form-group col-xs-12 floating-label-form-group controls">
							<label>PASSWORD</label> <input type="password"
								class="form-control" placeholder="PASSWORD" name="password"
								data-validation-required-message="Please enter your password">

						</div>
					</div>


					<br>
					<div class="row">
						<div class="form-group col-xs-12">
							<button type="submit" class="btn btn-success btn-lg">Login</button>
						</div>
					</div>

				</form>

			</div>
		</div>
	</div>
<br>
<br>
<br>
<br>
<br>

</section>


<%@include file="footer.jsp"%>
