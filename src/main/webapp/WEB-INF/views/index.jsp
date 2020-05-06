<!DOCTYPE HTML>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>OurAzit</title>
<!-- <link rel="manifest" href="/assets/favicon/manifest.json">
 -->
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
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

<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="/assets/favicon/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">

<script src="https://unpkg.com/swiper/js/swiper.min.js"></script>
<link rel="stylesheet" href="https://unpkg.com/swiper/css/swiper.min.css">
<link rel="stylesheet" href="/assets/css/main.css" />
<script src="/assets/js/jquery.min.js"></script>
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

#reply_area {
	margin-left: 1rem;
	color: gray;
}

html.open {
	overflow: hidden;
}

#reply {
	width: 100%;
	height: 100%;
	position: fixed;
	top: 0px;
	right: -100%;
	z-index: 10;
	background-color: #000000;
	text-align: center;
	transition: All 0.2s ease;
	-webkit-transition: All 0.2s ease;
	-moz-transition: All 0.2s ease;
	-o-transition: All 0.2s ease;
}

.reply_header>.close {
	font-size: 1.5rem;
	padding: 0 1.25rem;
}

#reply.open {
	right: 0px;
	overflow: scroll;
}

.page_cover.open {
	display: block;
}

.page_cover {
	width: 100%;
	height: 100%;
	position: fixed;
	top: 0px;
	left: 0px;
	background-color: rgba(0, 0, 0, 0.4);
	z-index: 4;
	display: none;
}

.reply_wrapper {
	display: flex;
}

.reply_wrapper>.comment {
	display: flex;
	margin: 1rem 0;
}

.reply_wrapper>.comment>.user_name {
	margin-right: 0.5rem;
}

.reply_wrapper>.comment>.user_comment {
	color: white;
}
</style>
</head>
<body class="is-preload">

	<!-- Header -->
	<header id="header">
		<i class="fas fa-camera"></i> <a class="logo" href="index.html">OurAzit</a> <i class="fas fa-paper-plane"></i>
	</header>
	<div id="preloadpost">
		<section class="wrapper" style="padding-top: 0;">
			<div class="inner">
				<div class="testimonials" id="load">
					<!-- <section style="padding-bottom: 0" postid="48" class="post">
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
    					Add Pagination
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
    					Add Pagination
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
    					Add Pagination
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
					 -->
					<!-- <section style="padding-bottom: 0" postid="48" class="post">
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
									<div class="swiper-slide">
										<img src="https://i.picsum.photos/id/239/700/700.jpg" style="width: 100%">
									</div>
									<div class="swiper-slide">
										<img src="https://i.picsum.photos/id/239/700/700.jpg" style="width: 100%">
									</div>
									<div class="swiper-slide">
										<img src="https://i.picsum.photos/id/239/700/700.jpg" style="width: 100%">
									</div>
									<div class="swiper-slide">
										<img src="https://i.picsum.photos/id/239/700/700.jpg" style="width: 100%">
									</div>
									<div class="swiper-slide">
										<img src="https://i.picsum.photos/id/239/700/700.jpg" style="width: 100%">
									</div>
									<div class="swiper-slide">
										<img src="https://i.picsum.photos/id/239/700/700.jpg" style="width: 100%">
									</div>
								</div>
								<div class="swiper-pagination"></div>
							</div>
							<div id="like">
								<i class="fas fa-heart" id="postlike" authorid="migusdn" postid="67" like="0" aria-hidden="true"> </i>
								<div class="count" style="padding: 0 1rem">
									<strong style="color: white; display: inline-block">좋아요</strong> <strong class="like_ctn" style="color: white; display: inline-block; padding-left: 0.5rem;">1</strong> <strong style="display: inline-block; color: white;"> 개</strong>
								</div>
							</div>
							<div id="post_comment" style="padding-left: 1rem; color: white;">
								<strong>userID</strong> TestMsg
							</div>
							<div id="reply_area">
								<input type="text" id="reply_content" placeholder="댓글 달기..." style="width: 70%; display: inline-block;">
								<button id="reply" class="reply" postid="48">확인</button>
							</div>
							<div id="reply_area" postid="81">
								댓글 n개 모두 보기
							</div>`
							
						</div>
					</section> -->
				</div>
			</div>
		</section>
	</div>
	<div id="reply">
		<div class="reply_header" style="color: rgba(255, 255, 255, 0.5); background: #181818; height: 60px; display: flex; align-items: center; border-bottom: 1px solid #80808045; position: fixed; top: 0; left: 0; right: 0;">
			<div onclick="history.back();" class="close" style="position: absolute;">
				<i class="fas fa-chevron-left"></i>
			</div>
			<div style="margin: auto;">
				<b>댓글</b>
			</div>
		</div>
		<div class="reply_fetch" style="margin-top: 60px; margin-bottom: 6rem;"></div>
		<div style="display: flex; position: fixed; bottom: 0; padding-left: 1.5rem; background: black; width: 100%; padding-bottom: 3rem;">
		<input type="text" id="reply_content" placeholder="댓글 달기..." style="width: 70%; display: inline-block;">
		<button  class="reply" postid="81">확인</button>
		</div>
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
		var options = {

			pagination : {
				el : '.swiper-pagination',
				dynamicBullets : true,
				init : true,
			}
		}
		var swiper = new Swiper('.swiper-container', options);
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
						if (result == '-1')
							alert('잘못된 접근');
						else{
							var html = "";
							html +='<div class="reply_wrapper">';
							html +='<div class="profile" style="margin: 1rem 0.8rem">';
							html +='<img style="border-radius: 100%; width: 2.5rem; display: block;" src="images/pic01.jpg" alt="">';
							html += '</div>';
							html += '<div class="comment">';
							html += '<div class="user_name">';
							html += '<strong>';
							html += user_id;
							html += '</strong>';
							html += '</div>'
							html += '<div class="user_comment">';
							html += reply_content.val();
							html += '</div></div></div>';
							$('.reply_fetch').append(html);
						}
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
		$(document).on('click', '.author', function() {
			var user_id = $(this).attr('userid');
			alert('author click');
			location.href = 'user/' + user_id;
			e.stopImmediatePropagation();
		});
		$(document).on(
				'click',
				'#postlike',
				function() {
					var post_id = $(this).attr('postid');
					var author_id = $(this).attr('authorid');
					var user_id = "${sessionScope.user_id}";
					var like = $(this);
					var like_ctn = like.parent().children('.count').children(
							'.like_ctn');
					var like_ctn_val = parseInt(like_ctn.text());
					if (user_id.length != 0) {
						var data = {
							'post_id' : post_id,
							'like_type' : like.attr('like'),
							'user_id' : user_id,
							'author_id' : author_id
						};
						$.ajax({
							url : "post_like",
							type : "POST",
							data : JSON.stringify(data),
							contentType : 'application/json; charset=utf-8;',
							dataType : "json",
							success : function(result) {
								if (result == '-1')
									alert('잘못된 접근');
								else {
									if (like.attr('like') == "0") {
										like.css('color', '#e84135');
										like.attr('like', '1');
										like_ctn_val = like_ctn_val + 1;
										like_ctn.text(like_ctn_val);
									} else {
										like.css('color', '#bbbbbb');
										like.attr('like', '0');
										like_ctn_val = like_ctn_val - 1;
										like_ctn.text(like_ctn_val);
									}
								}
							}
						});
					} else if (user_id.length == '0') {
						alert('로그인이 필요합니다.');
						location.href = '/mypage';
					}

				});
		let isEnd = false;
		$(function() {
			$(window).scroll(function() {
				let $window = $(this);
				let scrollTop = $window.scrollTop();
				let windowHeight = $window.height();
				let documentHeight = $(document).height();

				/* console.log("documentHeight:" + documentHeight
						+ " | scrollTop:" + scrollTop
						+ " | windowHeight: " + windowHeight);
				 */
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
					var swiper = new Swiper('.swiper' + $("#startNo").val(),
							options);
				}
			});

		}
		fetchList();
		let renderList = function(mode, vo) {
			// 리스트 html을 정의
			let post_content = JSON.parse(vo.post_content);
			let contents = post_content.contents;
			console.log(post_content.contents.length);
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
			html += '<div class="swiper-container swiper' + $("#startNo").val()
					+ '">';
			html += '<div class="swiper-wrapper">';
			for (var j = 0; j < contents.length; j++) {
				console.log(contents[j]);
				console.log(contents[j][0].savedPath);
				html += '<div class="swiper-slide"><img src="https://api.ourazit.com/img'
						+ contents[j][0].savedPath
						+ '/'
						+ contents[j][0].savedName
						+ '" style="width:100%"></div>';
			}
			/* html += '<div class="swiper-slide>"'+vo.post_content+'</div>';
			 */html += '</div>';
			html += '<div class="swiper-pagination"></div>';
			html += '</div>';
			html += '<div id="like">';
			html += '<i class="fas fa-heart" id="postlike" authorid="'
					+ vo.user_id + '"';
			html += 'postid="' + vo.post_id + '"';
			html += 'style="';

			if (like_check(vo.post_id)) {
				html += 'color: #e84135;"';
				html += 'like="1"';
			} else {
				html += 'color: #bbbbbb;"';
				html += 'like="0" ';
			}
			html += '></i>';
			html += '<div class="count" style="padding: 0 1rem"><strong style="color:white; display: inline-block">좋아요</strong>';
			html += '<strong class="like_ctn" style="color: white; display:inline-block; padding-left:0.5rem;">' + vo.post_like + '</strong>';
			html += '<strong style="display: inline-block; color:white;"> 개</strong>';
			html += '</div></div>';
			html += '<div id="post_comment" style="padding-left: 1rem; color:white;">';
			html += '<strong>'+vo.user_id+'&nbsp</strong>';
			html += post_content.comment;
			html += '</div>';
			html += '<div id="reply_area" postid="';
			html += vo.post_id;
			html += '">';
			html += '댓글&nbsp';
			html += vo.post_reply_ctn;
			html += '개 모두 보기';/* 
			html += '<input type="text" id="reply_content" placeholder="댓글 달기..."';
			html += 'style="width:70%; display: inline-block;">';
			html += '<button id="reply" class="reply"';
			html += 'postid='+vo.post_id+'>';
			html += '확인</button>'; */
			html += '</div>';
			html += '</div>';
			html += '</section>';
			if (mode) {
				$("#load").prepend(html);
			} else {
				$("#load").append(html);
			}
		}
		var likedata = ${likelist};
		var user_id = "${sessionScope.user_id}";
		function like_check(post_id) {
			for (i = 0; i < likedata.length; i++) {
				if (likedata[i].post_id == post_id) {
					return true;
				}
			}
			return false;
		}
		$(document).on('click', '#reply_area', function(){
			var post_id = $(this).attr('postid');
			$('.reply').attr('postid',post_id);
			$("#reply,.page_cover,html").addClass("open");
			window.location.hash = "#open";
			$("#header").css("z-index", -1);
			var paramData = new Object();
			paramData.post_id= $(this).attr('postId');
			
			$.ajax({
				url : "/replyfetch",
				type : "POST",
				data : JSON.stringify(paramData),
				contentType : 'application/json; charset=utf-8;',
				dataType : "json",
				success : function(result) {
					console.log(JSON.stringify(result));
					$.each(result, function(index, vo) {
						replyList(false, vo);
					})
				}
			});
		});

		window.onhashchange = function() {
			if (location.hash != "#open") {
				$("#reply,.page_cover,html").removeClass("open");
				$("#header").css("z-index", 1000);
				$('.reply_fetch').empty();
			}
		};
		let replyList = function(mode, vo) {
			var html = "";
			html +='<div class="reply_wrapper">';
			html +='<div class="profile" style="margin: 1rem 0.8rem">';
			html +='<img style="border-radius: 100%; width: 2.5rem; display: block;" src="images/pic01.jpg" alt="">';
			html += '</div>';
			html += '<div class="comment">';
			html += '<div class="user_name">';
			html += '<strong>';
			html += vo.user_id;
			html += '</strong>';
			html += '</div>'
			html += '<div class="user_comment">';
			html += vo.reply_content;
			html += '</div></div></div>';
			$('.reply_fetch').append(html);
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