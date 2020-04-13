<!DOCTYPE HTML>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="apple-touch-icon" sizes="57x57" href="/assets/favicon/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60" href="/assets/favicon/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72" href="/assets/favicon/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76" href="/assets/favicon/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114" href="/assets/favicon/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120" href="/assets/favicon/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144" href="/assets/favicon/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152" href="/assets/favicon/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180" href="/assets/favicon/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192" href="/assets/favicon/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32" href="/assets/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96" href="/assets/favicon/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16" href="/assets/favicon/favicon-16x16.png">
<link rel="manifest" href="/assets/favicon/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="/assets/favicon/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">
<link rel="stylesheet" href="/assets/css/main.css" />

<script src="https://unpkg.com/swiper/js/swiper.min.js"></script>
<link rel="stylesheet" href="https://unpkg.com/swiper/css/swiper.min.css">
<script src="/assets/js/jquery.min.js"></script>
<script src="/assets/js/color.js"></script>
<style>
#productBeforeList {
	height: 600px;
	border: 1px solid blue;
}

#productScroll {
	height: 200px;
	border: 1px solid red;
}

#productScroll::after {
	content: '';
	clear: both;
	display: table;
}

.product-item {
	float: left;
	width: 25%;
	height: 50px;
	text-align: center;
	background-color: lightgray;
	box-sizing: border-box;
}
</style>
</head>
<body class="is-preload">

	<!-- Header -->
	<header id="header">
		<a class="logo" href="index.html">OurAzit</a>

		<nav>
			<a href="#menu">릴레이 시 쓰기</a>
		</nav>
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
	<div id="preloadpost">
		<section class="wrapper" style="padding-top: 0;">
			<div class="inner">
				<div class="testimonials">
					<section style="padding-bottom: 0" postid="48" class="post">
						<div class="content">
							<div class="author" userid="migusdn">
								<div class="image">
									<img src="/images/pic01.jpg" alt="">
								</div>
								<div>
									<strong><c:out value="${post.user_id }" /></strong>
								</div>
							</div>
							<div class="swiper-container">
								<div class="swiper-wrapper">
									
								</div>
								<div class="swiper-pagination"></div>
							</div>
							<div id="like">
								<i class="fas fa-heart" id="postlike" authorid="migusdn" postid="48" like="0" aria-hidden="true"> </i> <i class="like_ctn">1</i>
							</div>
							<div id="reply_area">
								<input type="text" id="reply_content" placeholder="댓글 달기..." style="width: 70%; display: inline-block;">
								<button id="reply" class="reply" postid="<c:out value="${post.post_id }"/>">확인</button>
							</div>

						</div>
					</section>
					<div class="content" style="background-color: white;">
						
						<div class="reply_view" id="load" style="margin-left: 10px; margin-right: 10px;"></div>
					</div>
				</div>
			</div>
		</section>
	</div>
	<script>
	var options = {
			
		      pagination: {
		          el: '.swiper-pagination',
		          dynamicBullets: true,
		          init: true,
		        }
		      }

    var swiper;
  </script>

	<script>
	$(document).ready(function(){
		let post_content = JSON.parse('<c:out value="${post.post_content }" escapeXml="false" />');
		let contents = post_content.contents;
		console.log(post_content);
		var like = ${like};
		console.log(like);
		console.log($('#postlike').attr('like'));
		if(like == true){
			$("#postlike").attr('like','1');
			$('#postlike').css('color', '#e84135');
			console.log($('#postlike').attr('like'));
				
		}
		else
			console.log("false");
		let html = "";
		for(var j=0; j<contents.length; j++){
			console.log(contents[j]);
			console.log(contents[j][0].savedPath);
			html += '<div class="swiper-slide"><img src="http://api.ourazit.com/img'+contents[j][0].savedPath+'/'+contents[j][0].savedName+'" style="width:100%"></div>';
		}
		$(".swiper-wrapper").append(html);	
		swiper = new Swiper('.swiper-container', options);
	});
	$(document).on('click', '#postlike',function() {
		console.log('like click');
		var post_id = $(this).attr('postid');
		var author_id = $(this).attr('authorid');
		var user_id = "${sessionScope.user_id}";
		var like = $(this);
		var like_ctn = like.parent().children('.like_ctn');
		var like_ctn_val = parseInt(like.parent().children('.like_ctn').text());
		if (user_id.length != 0) {
			var data = {
				'post_id' : post_id,
				'like_type' : like.attr('like'),
				'user_id' : user_id,
				'author_id': author_id
			};
			$.ajax({
				url : "/post_like",
				type : "POST",
				data : JSON.stringify(data),
				contentType : 'application/json; charset=utf-8;',
				dataType : "json",
				success : function(result) {
					if(result=='-1')
						alert('잘못된 접근');
					else{
						if(like.attr('like') == "0"){
							like.css('color','#e84135');
							like.attr('like', '1');
							like_ctn_val = like_ctn_val + 1;
							like_ctn.text(like_ctn_val);
						}
						else{
							like.css('color','#bbbbbb');
							like.attr('like', '0');
							like_ctn_val = like_ctn_val - 1;
							like_ctn.text(like_ctn_val);
						}
					}
				}
			});
		} else if (user_id.length == '0'){
			alert('로그인이 필요합니다.');
			location.href='/mypage';
		}

	    event.stopPropagation();
	});
	$(document).ready(function(){
		//alert(${PList});
	$.each(${reply}, function(index, vo){
        renderList(false, vo);
    }) 	
	});
	let renderList = function(mode, vo){
        // 리스트 html을 정의
        let html = "";
        	html += '<div class="col-6 col-12-small">';
        	html += '<h4>';
        	html += vo.user_id;
        	html += '</h4>';
        	html += '<ul class="alt">';
        	html += '<hr style="margin: 0;">';
        	html += vo.reply_content;
        	html += '</ul>';
        	html += '</div>';
            $("#load").append(html);
        
    }
	/* $(document).on('click', '.post', function () {
	    var post_id = $(this).attr('postid');
		location.href='post/'+post_id;
	    // your function here
	}); */
	</script>
	<!-- Footer -->
	<footer id="footer">
		<div class="MenuIcon" onclick="location.href='/';">
			<i class="fas fa-home" style="color: #444444;"></i>
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
			<i class="fas fa-user"></i>
		</div>
	</footer>
	<script type="text/javascript">
		$(document).on('click', '.reply', function() {
			var post_id = $(this).attr('postid');
			var reply_content = $(this).parent().children('input');
			var user_id = "${sessionScope.user_id}";
			if (reply_content.length != 0 && user_id.length != 0) {
				var data = {
					'post_id' : post_id,
					'reply_content' : reply_content.val().trim(),
					'user_id' : user_id
				};
				reply_content.val("");
				$.ajax({
					url : "/reply",
					type : "POST",
					data : JSON.stringify(data),
					contentType : 'application/json; charset=utf-8;',
					dataType : "json",
					success : function(result) {
						if(result=='-1')
							alert('잘못된 접근');
						else{
							let html = "";
				        	html += '<div class="col-6 col-12-small">';
				        	html += '<h4>';
				        	html += data.user_id;
				        	html += '</h4>';
				        	html += '<ul class="alt">';
				        	html += '<hr style="margin: 0;">';
				        	html += data.reply_content;
				        	html += '</ul>';
				        	html += '</div>';
				            $("#load").append(html);
						}
					}
				});
			} else if (user_id.length == '0')
				alert('로그인이 필요합니다.');
			else
				alert('덧글을 입력해주세요');
			// your function here
		});
	</script>
	<!-- Scripts -->
	<script src="/assets/js/browser.min.js"></script>
	<script src="/assets/js/breakpoints.min.js"></script>
	<script src="/assets/js/util.js"></script>
	<script src="/assets/js/main.js"></script>
	<script src="/assets/js/fontawesome.js" crossorigin="anonymous"></script>
</body>
</html>