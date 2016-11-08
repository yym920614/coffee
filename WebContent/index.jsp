<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="header.jsp"%>

<header>
	<style>
#video {
	position: absolute;
	top: -150px;
	left: -50px;
	min-width: 100%;
	min-height: 100%;
	width: auto;
	height: auto;
	z-index: -1;
	overflow: hidden;
}
</style>


	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<img src="img/profile.png" alt="">

				<div class="intro-text">
					<span class="name"> "World Coffee Tour"</span>

					<hr class="star-light">
					<span class="skills">Web Developer -
						WON&nbsp;&nbsp;&nbsp;KIM&nbsp;&nbsp;&nbsp;YOO&nbsp;&nbsp;&nbsp;YUN&nbsp;&nbsp;&nbsp;AND
						MISS.LEE</span>
					<video id="video" preload="auto" autoplay="true" loop="loop"
						muted="muted" volume="0">
						<source src="/mp4/backVideo.mp4">
					</video>
				</div>
			</div>
		</div>
	</div>
</header>


<%@include file="footer.jsp"%>