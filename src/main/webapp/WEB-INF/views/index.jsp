<!DOCTYPE HTML>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--
	Industrious by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
<head>
<title>OurAzit</title>
<!-- <link rel="manifest" href="/assets/favicon/manifest.json">
 --><meta name="apple-mobile-web-app-capable" content="yes"/>
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
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

<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="/assets/favicon/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">

<script src="https://unpkg.com/swiper/js/swiper.min.js"></script>
<link rel="stylesheet" href="https://unpkg.com/swiper/css/swiper.min.css">
<link rel="stylesheet" href="/assets/css/main.css" />
<script src="/assets/js/jquery.min.js"></script>
<script src="/assets/js/color.js"></script>


<meta charset="utf-8" />
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
	<div id="preloadpost">
		<section class="wrapper" style="padding-top:0;">
			<div class="inner">
				<div class="testimonials" id="load">
					<section style="padding-bottom: 0" postid="48" class="post">
						<div class="content">
							<div class="author" userid="migusdn">
								<div class="image">
									<img src="images/pic01.jpg" alt="">
								</div>
								<div>
								<strong>migusdn</strong>
								</div>
							</div>
							<div class="swiper-container">
								<div class="swiper-wrapper">
									<div class="swiper-slide"><img src="https://i.picsum.photos/id/239/700/700.jpg" style="width:100%"></div>
									<div class="swiper-slide"><img src="https://i.picsum.photos/id/239/700/700.jpg" style="width:100%"></div>
									<div class="swiper-slide"><img src="https://i.picsum.photos/id/239/700/700.jpg" style="width:100%"></div>
									<div class="swiper-slide"><img src="https://i.picsum.photos/id/239/700/700.jpg" style="width:100%"></div>
									<div class="swiper-slide"><img src="https://i.picsum.photos/id/239/700/700.jpg" style="width:100%"></div>
									<div class="swiper-slide"><img src="https://i.picsum.photos/id/239/700/700.jpg" style="width:100%"></div>
								</div>
    					<!-- Add Pagination -->
    							<div class="swiper-pagination"></div>
  							</div>
  							<div id="like">
								<i class="fas fa-heart" id="postlike" authorid="migusdn" postid="48" like="0" aria-hidden="true">
								</i>
								<p>좋아요</p>
								<i class="like_ctn">1</i>	
							</div>
  							<div class="post_contents" style="margin: 0 1.25rem; color:white;">ㄱ모링</div>
							<div id="reply_area">
								<input type="text" id="reply_content" placeholder="댓글 달기..." style=" width: 70%; display: inline-block;">
								<button id="reply" class="reply" postid="48" >확인</button>
							</div>
							
						</div>
					</section>
					<section style="padding-bottom: 0" postid="48" class="post">
						<div class="content">
							<div class="author" userid="migusdn">
								<div class="image">
									<img src="images/pic01.jpg" alt="">
								</div>
								<div>
								<strong>migusdn</strong>
								</div>
							</div>
							<div class="swiper-container">
								<div class="swiper-wrapper">
									<div class="swiper-slide"><img src="https://i.picsum.photos/id/239/700/700.jpg" style="width:100%"></div>
									<div class="swiper-slide"><img src="https://i.picsum.photos/id/239/700/700.jpg" style="width:100%"></div>
									<div class="swiper-slide"><img src="https://i.picsum.photos/id/239/700/700.jpg" style="width:100%"></div>
									<div class="swiper-slide"><img src="https://i.picsum.photos/id/239/700/700.jpg" style="width:100%"></div>
									<div class="swiper-slide"><img src="https://i.picsum.photos/id/239/700/700.jpg" style="width:100%"></div>
									<div class="swiper-slide"><img src="https://i.picsum.photos/id/239/700/700.jpg" style="width:100%"></div>
								</div>
    					<!-- Add Pagination -->
    							<div class="swiper-pagination"></div>
  							</div>
  							<div id="like">
								<i class="fas fa-heart" id="postlike" authorid="migusdn" postid="48" like="0" aria-hidden="true">
								</i>
								<i class="like_ctn">1</i>	
							</div>
							<div id="reply_area">
								<input type="text" id="reply_content" placeholder="댓글 달기..." style=" width: 70%; display: inline-block;">
								<button id="reply" class="reply" postid="48" >확인</button>
							</div>
							
						</div>
					</section>
					<section style="padding-bottom: 0" postid="48" class="post">
						<div class="content">
							<div class="author" userid="migusdn">
								<div class="image">
									<img src="images/pic01.jpg" alt="">
								</div>
								<div>
								<strong>migusdn</strong>
								</div>
							</div>
							<div class="swiper-container">
								<div class="swiper-wrapper">
									<div class="swiper-slide"><img src="https://i.picsum.photos/id/239/700/700.jpg" style="width:100%"></div>
									<div class="swiper-slide"><img src="https://i.picsum.photos/id/239/700/700.jpg" style="width:100%"></div>
									<div class="swiper-slide"><img src="https://i.picsum.photos/id/239/700/700.jpg" style="width:100%"></div>
									<div class="swiper-slide"><img src="https://i.picsum.photos/id/239/700/700.jpg" style="width:100%"></div>
									<div class="swiper-slide"><img src="https://i.picsum.photos/id/239/700/700.jpg" style="width:100%"></div>
									<div class="swiper-slide"><img src="https://i.picsum.photos/id/239/700/700.jpg" style="width:100%"></div>
								</div>
    					<!-- Add Pagination -->
    							<div class="swiper-pagination"></div>
  							</div>
  							<div id="like">
								<i class="fas fa-heart" id="postlike" authorid="migusdn" postid="48" like="0" aria-hidden="true">
								</i>
								<i class="like_ctn">1</i>	
							</div>
							<div id="reply_area">
								<input type="text" id="reply_content" placeholder="댓글 달기..." style=" width: 70%; display: inline-block;">
								<button id="reply" class="reply" postid="48" >확인</button>
							</div>
							
						</div>
					</section>
					<section style="padding-bottom: 0" postid="48" class="post">
						<div class="content">
							<div class="author" userid="migusdn">
								<div class="image">
									<img src="images/pic01.jpg" alt="">
								</div>
								<div>
								<strong>migusdn</strong>
								</div>
							</div>
							<div class="swiper-container">
								<div class="swiper-wrapper">
									<div class="swiper-slide"><img src="https://i.picsum.photos/id/239/700/700.jpg" style="width:100%"></div>
									<div class="swiper-slide"><img src="https://i.picsum.photos/id/239/700/700.jpg" style="width:100%"></div>
									<div class="swiper-slide"><img src="https://i.picsum.photos/id/239/700/700.jpg" style="width:100%"></div>
									<div class="swiper-slide"><img src="https://i.picsum.photos/id/239/700/700.jpg" style="width:100%"></div>
									<div class="swiper-slide"><img src="https://i.picsum.photos/id/239/700/700.jpg" style="width:100%"></div>
										
								</div>
    					<!-- Add Pagination -->
    							<div class="swiper-pagination"></div>
  							</div>
  							<div id="like">
								<i class="fas fa-heart" id="postlike" authorid="migusdn" postid="48" like="0" aria-hidden="true">
								</i>
								<i class="like_ctn">1</i>	
							</div>
							<div id="reply_area">
								<input type="text" id="reply_content" placeholder="댓글 달기..." style=" width: 70%; display: inline-block;">
								<button id="reply" class="reply" postid="48" >확인</button>
							</div>
							
						</div>
					</section>
					
					
					<script>
	var options = {
			
		      pagination: {
		          el: '.swiper-pagination',
		          dynamicBullets: true,
		          init: true,
		        }
		      }
    var swiper = new Swiper('.swiper-container', options);
  </script>
					
					
					
					
					
					
					
					
				</div>
			</div>
		</section>
	</div>
	<input type="hidden" id="startNo" value="0">
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
				$.ajax({
					url : "reply",
					type : "POST",
					data : JSON.stringify(data),
					contentType : 'application/json; charset=utf-8;',
					dataType : "json",
					success : function(result) {
						if(result=='-1')
							alert('잘못된 접근');
						reply_content.val("");
						
					}
				});
			} else if (user_id.length == '0')
				alert('로그인이 필요합니다.');
			else
				alert('덧글을 입력해주세요');
			// your function here
			
			
		});
	
		/* $(document).on('click', '.post', function () {
		    var post_id = $(this).attr('postid');
			location.href='post/'+post_id;
		}); */
		$(document).on('click', '.author',function () {
		    var user_id = $(this).attr('userid');
		    alert('author click');
		    location.href='user/'+user_id;
		    e.stopImmediatePropagation();
		});
		$(document).on('click', '#postlike',function() {
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
					url : "post_like",
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
			
		});
		let isEnd = false;
		$(function() {
			$(window).scroll(
					function() {
						let $window = $(this);
						let scrollTop = $window.scrollTop();
						let windowHeight = $window.height();
						let documentHeight = $(document).height();

						console.log("documentHeight:" + documentHeight
								+ " | scrollTop:" + scrollTop
								+ " | windowHeight: " + windowHeight);

						// scrollbar의 thumb가 바닥 전 30px까지 도달 하면 리스트를 가져온다.
						if (scrollTop + windowHeight + 30 > documentHeight) {
							fetchList();
						}
					})
		})

		let fetchList = function() {
			if (isEnd == true) {
				return;
			}

			let startNo = $("#startNo").val();
			$.ajax({
				url : "/postfetch",
				type : "POST",
				data : startNo,
				contentType : 'text/plain; charset=utf-8;',
				dataType : "json",
				success : function(result) {
					$("#startNo").val(Number(startNo) + 1);
					// 컨트롤러에서 가져온 방명록 리스트는 result.data에 담겨오도록 했다.
					// 남은 데이터가 5개 이하일 경우 무한 스크롤 종료
					let length = result.post.length;
					if (length < 5) {
						isEnd = true;
					}
					$.each(result.post, function(index, vo) {
						renderList(false, vo);
					})
				    var swiper = new Swiper('.swiper'+$("#startNo").val(), options);
				}
			});
			
		}

		let renderList = function(mode, vo) {
			// 리스트 html을 정의
			let html = ""
			html += '<section style="padding-bottom: 0"postid="'+vo.post_id+'" class="post">';
			html += '<div class="content">';
			html += '<div class="author" userid="'+vo.user_id+'">';
			html += '<div class="image">';
			html += '<img src="images/pic01.jpg" alt="" />'
			html += '</div><div>'
			html += '<strong>'
			html += vo.user_id;
			html += '</strong>';
			html += '</div>';
			html += '</div>';
			html += '<div class="swiper-container swiper'+$("#startNo").val()+'">';
			html += '<div class="swiper-wrapper">';
			/* html += '<div class="swiper-slide>"'+vo.post_content+'</div>';
			 */html += '<div class="swiper-slide"><img src="https://i.picsum.photos/id/239/700/700.jpg" style="width:100%"></div>';
			html += '<div class="swiper-slide"><img src="https://i.picsum.photos/id/239/700/700.jpg" style="width:100%"></div>';
			html += '<div class="swiper-slide"><img src="https://i.picsum.photos/id/239/700/700.jpg" style="width:100%"></div>';
			html += '<div class="swiper-slide"><img src="https://i.picsum.photos/id/239/700/700.jpg" style="width:100%"></div>';
			html += '<div class="swiper-slide"><img src="https://i.picsum.photos/id/239/700/700.jpg" style="width:100%"></div>';
			html += '</div>';
			html += '<div class="swiper-pagination"></div>';
			html += '</div>';
			html += '<div id="like">';
			html += '<i class="fas fa-heart" id="postlike" authorid="'+vo.user_id+'"';
			html += 'postid="'+vo.post_id+'"';
			html += 'style="';
			
			if(like_check(vo.post_id)){
				html += 'color: #e84135;"';
				html+= 'like="1"';
			}
			else {
				html += 'color: #bbbbbb;"';
				html += 'like="0" ';
			}
			html += '></i>';
			html += '<i class="like_ctn">'+vo.post_like+'</i>';
			html += '</div>';
			html += '<div id="reply_area">';
			html += '<input type="text" id="reply_content" placeholder="댓글 달기..."';
			html += 'style="width:70%; display: inline-block;">';
			html += '<button id="reply" class="reply"';
			html += 'postid='+vo.post_id+'>';
			html += '확인</button>';
			html += '</div>';
			html += '</div>';
			html += '</section>'
			if (mode) {
				$("#load").prepend(html);
			} else {
				$("#load").append(html);
			}
		}
	var likedata = ${likelist};
	var user_id = "${sessionScope.user_id}";
	function like_check(post_id){
		for(i=0;i<likedata.length; i++){
			if(likedata[i].post_id == post_id){
				return true;
			}
		}
		return false;
	}
	</script>
	<!-- Scripts -->
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
	<script src="assets/js/fontawesome.js" crossorigin="anonymous"></script>
</body>
</html>