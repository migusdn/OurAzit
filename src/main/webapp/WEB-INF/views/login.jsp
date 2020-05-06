<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Industrious by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html style="height:100%">
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
<link rel="stylesheet" href="assets/css/main.css" />
<script src="assets/js/jquery.min.js"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

</head>
<body class="is-preload"style="height:100%">

	<!-- Header -->
	<header id="header">
		<i class="fas fa-camera"></i>
		<a class="logo" href="index.html">OurAzit</a>
		<i class="fas fa-paper-plane"></i>
	</header>

	<!-- Banner
    <section id="banner">
        <div class="inner">
            <h1>시 창작 플랫폼</h1>
            <p>A responsive business oriented template with a video background<br />
            designed by <a href="https://templated.co/">TEMPLATED</a> and released under the Creative Commons License.</p>
        </div>
        <video autoplay loop muted playsinline src="images/banner.mp4"></video>
    </section>
-->
	<!-- Testimonials -->
	<section class="wrapper" id="main"style="height:95%">
		<div class="inner"style="height:100%">
			<div class="content" style="border-radius: 0px; height:100%">
				<div class="row">
					<div class="col-6 col-12-medium">
						<h2 align="center">로그인</h2>
					</div>
					<div class="col-6 col-12-medium">&nbsp;</div>
					<div class="row gtr-uniform">
						<div class="col-6 col-12-xsmall">
							<input type="text" name="user_id" id="user_id" value=""
								placeholder="ID or Email" required>
						</div>
						<div class="col-6 col-12-xsmall">
							<input type="password" name="user_password" id="user_password"
								value="" placeholder="PASSWORD" required>
						</div>
						<div class="col-3 col-12-small">
								<button style="width:50%;color:black;font-size:1rem;"id="login">로그인</button><button style="width:50%;color:black;font-size:1rem;"onclick="location.href='register_type'">회원가입</button>
						</div>
						<div class="col-3 col-12-small">
							
						</div>
						<div id="sns login" style="display:inline-block;padding:0; margin:0 auto;">
						
							<a id="custom-login-btn" href="javascript:loginWithKakao()">
							<img src="images/kakao_login_btn_medium_wide.png">
							</a>
					</div>
					</div>

				</div>
			</div>
		</div>
	</section>
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
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
	<script src="assets/js/fontawesome.js" crossorigin="anonymous"></script>
	<script src="assets/js/login.js"></script>

</body>
</html>