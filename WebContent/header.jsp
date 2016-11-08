<!DOCTYPE html>
<html lang="en">

<head>

<%
		Object obj = session.getAttribute("LOGIN");
	
%>


<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Freelancer - Start Bootstrap Theme</title>

<!-- Bootstrap Core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Theme CSS -->
<link href="css/freelancer.min.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="vendor/font-awesome/css/font-awesome.min.css"
   rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
   rel="stylesheet" type="text/css">
<link
   href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
   rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<nav id="mainNav"
   class="navbar navbar-default navbar-fixed-top navbar-custom aaffix-top">
   <div class="container">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header page-scroll">
         <button type="button" class="navbar-toggle" data-toggle="collapse"
            data-target="#bs-example-navbar-collapse-1">
            <span class="sr-only">Toggle navigation</span> Menu <i
               class="fa fa-bars"></i>
         </button>
         <a class="navbar-brand" href="/index.jsp">World Coffee Tour</a>
      </div>

      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse"
         id="bs-example-navbar-collapse-1">
         <ul class="nav navbar-nav navbar-right">
            <li class="hidden active"><a href="#page-top"></a></li>
            <li class="page-scroll"><a href="/list.jsp">List</a></li>
            <% if ( obj==null) { %>
            <li class="page-scroll"><a href="/login.jsp">Login</a></li>
            <li class="page-scroll"><a href="/register.jsp">Join Us</a></li>
            <% } else { %>
            <li class="page-scroll"><a href="/order.jsp">Order</a></li>
            <li class="page-scroll"><a href="/logoutAction.jsp">Logout</a></li>
            <% } %>
         </ul>
      </div>
      <!-- /.navbar-collapse -->
   </div>
   <!-- /.container-fluid -->
</nav>