<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="theme-color" content="#ffffff">
<link rel="stylesheet" href="/assets/css/main.css" />
<script src="/assets/js/jquery.min.js"></script>

<style>
.preview {
	overflow: hidden;
	width: 33.3%;
	display: inline-block;
}

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

.userId {
	color: #ffffff;
	font-size: 1rem;
	font-weight: 600;
	/* height: inherit; */
	line-height: inherit;
	padding: 0 1.25rem;
	text-decoration: none;
	margin: 0 auto;
}

.modal {
	background: black;
	width: 100%;
	height: 100%;
	margin: 0;
	padding: 0;
	transition: all 600ms cubic-bezier(0.86, 0, 0.07, 1);
	top: 100%;
	position: fixed;
	left: 0;
	text-align: left; . header { padding : 20px;
	border-bottom: 1px solid #ddd;
	font: 300 24px Lato;
	position: relative;
}

.body {
	padding: 20px;
	font: 300 16px Lato;
}

}
.container.modal-open .modal {
	top: 0%;
	border-top-left-radius: 1rem;
	border-top-right-radius: 1rem;
}

.wrapper {
	z-index: 0;
}

.userInfo {
	margin: auto 1rem;
	color: white;
}

.userInfo>.num {
	text-align: center;
}
img{
	max-width: 100%;
}
</style>
</head>
<body class="is-preload">

	<!-- Header -->
	<header id="header">
		<div class="userId">
		${user_id}
		
		</div>
		<c:if test="${sessionScope.user_id eq user_id}">
		<c:out value='<div id="logout" style="position: absolute; right:0;">
		<i class="fas fa-sign-out-alt"></i>
		</div>' escapeXml="false"></c:out>
		</c:if>
	</header>
	<div class="container">

		<div class="data">
			<div style="display: flex; margin: 1rem;">
				<div class="image">
					<img src="/images/pic01.jpg" style="width: 5rem;" alt="" />
				</div>
				<div style="display: flex; margin: 0 auto;">
					<div class="userInfo" style="color: white;">
						<div class="num">
							<b class="post_ctn">0</b>
						</div>
						게시물
					</div>
					<div class="userInfo">
						<div class="num">
							<b>0</b>
						</div>
						팔로워
					</div>
					<div class="userInfo">
						<div class="num">
							<b>0</b>
						</div>
						팔로잉
					</div>
				</div>
			</div>
			<div style="margin: 1rem 1rem 0.5rem 1rem">이름</div>
			<div id="modal" style="color: white; text-align: center; margin: 0 1rem; border: 1px solid gray; border-radius: 5px; padding: 0.2rem 0;">프로필수정</div>
		</div>
		<div class="modal">
			<div class="header" style="background: #262626; height: 60px; display: flex;">
				<div class="close-modal" style="margin: auto;">
					<b>취소</b>
				</div>
				<div style="margin: auto;">
					<b>프로필 편집</b>
				</div>
				<div style="margin: auto;">
					<b>완료</b>
				</div>
			</div>
			<div class="body">
				<div class="close-modal">Close</div>
				<div class="">test</div>

			</div>
		</div>

		<!-- Testimonials -->
		<section class="wrapper" id="main" style="padding: 2rem 0 70px 0;">
			<div class="preview_wrapper" style="line-height:0; display:block;">
<!-- 				<div class="preview"><img src="https://i.picsum.photos/id/239/700/700.jpg"></div
				><div class="preview"><img src="https://i.picsum.photos/id/239/700/700.jpg"></div
				><div class="preview"><img src="https://i.picsum.photos/id/239/700/700.jpg"></div>
			 -->
			</div>

			<div style="display: block;" id="load"></div>

		</section>
		<script>
	$(document).ready(function(){
		var ctn=0;
	$.each(${PList}, function(index, vo){
        renderList(false, vo);
        ctn++;
    }) 	
    $('.post_ctn').text(ctn);
	});
	let renderList = function(mode, vo){
        // 리스트 html을 정의
        var post_content = JSON.parse(vo.post_content);
        console.log(post_content);
        console.log(post_content.contents[0][0].savedPath);
        let html = ""
        	html +='<div class="preview" postid="'+vo.post_id+'">';
        	html +='<img src="http://api.ourazit.com/img'
        			+ post_content.contents[0][0].savedPath
        			+ '/s_'
        			+ post_content.contents[0][0].savedName
        			+'"></div>';
            $(".preview_wrapper").append(html);
        
    }
	$(document).on('click', '.preview', function () {
	    var post_id = $(this).attr('postid');
		location.href='/post/'+post_id;
	    // your function here
	});  
	$('#modal').click(function(){
		  $('.container').addClass('modal-open');
		  $('body').addClass('')
		  $('.wrapper').css('z-index', -1);
		  $('#header').css('z-index', -1);
		});

		$('.close-modal').click(function(){
		  $('.container').removeClass('modal-open');
		  setTimeout(function(){
			  $('.wrapper').css('z-index', 0);  
			  $('#header').css('z-index', 0);
		  }, 600);
		});
	$('#logout').click(function(){
		location.href='/Logout';
	})
		</script>

	</div>
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
	<script src="https://kit.fontawesome.com/0b2e511928.js" crossorigin="anonymous"></script>
</body>
</html>