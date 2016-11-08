<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="header.jsp"%>

<style type="text/css">

/* 기본 설정*/

/* nav tag */
.menu ul {
	padding-top: 10px;
} /*  상단 여백 10px  */
.menu ul li {
	display: inline; /*  세로나열을 가로나열로 변경 */
	border-left: 1px solid #999; /* 각 메뉴의 왼쪽에 "|" 표시(분류 표시) */
	font: bold 15px Dotum; /* 폰트 설정 - 12px의 돋움체 굵은 글씨로 표시 */
	padding: 0 10px; /* 각 메뉴 간격 */
}

.menu ul li:first-child {
	border-left: none;
}

.cart ul li {
	display: inline;
	border-left: 0px point /*  세로나열을 가로나열로 변경 */ 
	 font: bold 15px Dotum; /* 폰트 설정 - 12px의 돋움체 굵은 글씨로 표시 */
	padding: 0 10px; /* 각 메뉴 간격 */
}
</style>

<section id="contact">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2>Cart</h2>
				<hr class="star-primary">
			</div>
		</div>
	</div>
	<div class="menu">
		<ul>
			<li style="width: 70%; float: left;">상품정보</li>
			<li style="width: 9%; float: left;">구매수량</li>
			<li style="width: 10%; float: left;">가격</li>
		</ul>
	</div>
	<div class="col-md-2 text-center">
		<img src="img/coffee/1.png" class="img-responsive" width="100%">
	</div>
	<div class=".col-md-4">
		<div class="cart">
			<ul>
				<li style="width: 57%; float: left;">상품정보</li>
				<li style="width: 9%; float: left;">구매수량</li>
				<li style="width: 9%; float: left;">가격</li>
				<button style="width: 10%; float: right;">취소하기</button>
			</ul>
		</div>
	</div>


</section>
<section>
	<div class="form-group col-xs-6">

		<input type="button" class="btn btn-success btn-lg"
			onclick=" location='order.jsp'" value="Order">

	</div>
	<div class="form-group col-xs-6">

		<input type="button" class="btn btn-success btn-lg"
			onclick=" location='#'" value="Cancel">

	</div>
</section>


<%@include file="footer.jsp"%>