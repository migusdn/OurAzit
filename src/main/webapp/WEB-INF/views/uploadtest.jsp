<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
  background: #262626;
  width: 100%;
  height: 100%;
  margin: 0;
  padding: 0;
  transition: all 600ms cubic-bezier(0.86, 0, 0.07, 1);
  top: 100%;
  position: fixed;
  left: 0;
  text-align: left;
  .header {
    padding:20px;
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
  top: 50%;
  border-top-left-radius: 5px;
  border-top-right-radius: 5px;
}
.wrapper{
	z-index:0;
}
</style>
</head>
<body class="is-preload">
	
	<!-- Header -->
	<header id="header">
		<a class="userId" href="index.html">${sessionScope.user_id }</a> 
		<i class="fas fa-bars" id="modal" style="position: absolute;"></i>
	</header>
	<div class="container">

	<section>
		<div class="data" style="padding: 20px 15px 0;">
			<div>
				<div class="image">
					<img src="/images/pic01.jpg" width="50" alt="" />
				</div>
			</div>
		</div>
	</section>
	<div class="modal">
    <div class="header">
    </div>
    <div class="body"><p style="color:white">And here is all its contents.</p>
      <a class="btn js-close-modal">Close</a>
    </div>
  </div>


	<!-- Testimonials -->
	<section class="wrapper" id="main" style="padding: 2rem 0 70px 0;">
		<div style="display: block;" id="load"></div>
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
	$('#modal').click(function(){
		  $('.container').addClass('modal-open');
		  $('.wrapper').css('z-index', -1);
		});

		$('.js-close-modal').click(function(){
		  $('.container').removeClass('modal-open');
		  setTimeout(function(){
			  $('.wrapper').css('z-index', 0);  
		  }, 600);
		});
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
	<script src="/assets/js/fontawesome.js" crossorigin="anonymous"></script>

</body>
</html>