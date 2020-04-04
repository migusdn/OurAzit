<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Industrious by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
<head>
<title>OurAzit</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="apple-touch-icon" sizes="57x57" href="/assets/favicon/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60" href="/assets/favicon/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72" href="/assets/favicon/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76" href="/assets/favicon/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114" href="/assets/favicon/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120" href="/assets/favicon/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144" href="/assets/favicon/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152" href="/assets/favicon/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180" href="/assets/favicon/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"  href="/assets/favicon/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32" href="/assets/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96" href="/assets/favicon/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16" href="/assets/favicon/favicon-16x16.png">
<link rel="manifest" href="/assets/favicon/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="/assets/favicon/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">
<link rel="stylesheet" href="/assets/css/main.css" />
<script src="/assets/js/jquery.min.js"></script>
<script src="/assets/js/color.js"></script>

<style>
.box {
	position: relative;
	width: 33.3%; /* 원하는 너비 */
}

.box:before {
	content: "";
	display: block;
	padding-top: 100%; /* 1:1 비율 */
}

.post {

	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
}
</style>
</head>
<body class="is-preload">

	<!-- Header -->
	<header id="header">
		<a class="logo" href="index.html">OurAzit</a>

		<nav>
			<a href="/Logout">로그아웃</a>
		</nav>
	</header>


	<section>
		<div class="data" style="padding: 20px 15px 0;">
			<div>
				<div class="image">
					<img src="/images/pic01.jpg" width="50" alt="" />
				</div>
			</div>
		</div>

	</section>



	<!-- Testimonials -->
	<section class="wrapper" id="main" style="padding: 2rem 0 70px 0;">
		<div style="display: block;" id="load">
			
			
		</div>
	</section>
	<script>
	$(document).ready(function(){
	$.each(${PList}, function(index, vo){
        renderList(false, vo);
    }) 	
	});
	let renderList = function(mode, vo){
        // 리스트 html을 정의
        let html = ""
        	html +='<div class="box" style="background-color:'+vo.post_background+';margin:0; display:inline-block;">';
        	html +='<div class="post" id="post" postid="'+vo.post_id+'"';
        	html +='style="margin:0;padding:10px;">';
        	html +='<span style="background-color:white; border-radius:13px; padding-left:5px; padding-right:5px">';
        	html +=vo.post_title +'</span></div>';

            $("#load").append(html);
        
    }
	$(document).on('click', '.post', function () {
	    var post_id = $(this).attr('postid');
		location.href='/post/'+post_id;
	    // your function here
	});
	</script>
	<!-- Footer -->
	<footer id="footer">
		<div class="MenuIcon" onclick="location.href='/';">
			<i class="fas fa-home"></i>
		</div>
		<div class="MenuIcon" onclick="location.href='/search';">
			<i class="fas fa-search"></i>
		</div>
		<div class="MenuIcon" onclick="location.href='/add';">
			<i class="far fa-plus-square"></i>
		</div>
		<div class="MenuIcon" onclick="location.href='/follow';">
			<i class="fas fa-heart"></i>
		</div>
		<div class="MenuIcon" onclick="location.href='/mypage';">
			<i class="fas fa-user" style="color: #444444;"></i>
		</div>
	</footer>

	<!-- Scripts -->


	<script src="/assets/js/browser.min.js"></script>
	<script src="/assets/js/breakpoints.min.js"></script>
	<script src="/assets/js/util.js"></script>
	<script src="/assets/js/main.js"></script>
	<script src="/assets/js/fontawesome.js" crossorigin="anonymous"></script>

</body>
</html>