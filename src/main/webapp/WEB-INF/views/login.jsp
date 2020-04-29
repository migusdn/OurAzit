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
<link rel="stylesheet" href="assets/css/main.css" />
<script src="assets/js/jquery.min.js"></script>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript">
function onEnterLogin(){
	$("#nameTest").keypress(function (e) {
        if (e.which == 13){
                   console.log('test');  // 실행할 이벤트
        }
    });
}

</script>
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


	<!-- Testimonials -->
	<section class="wrapper" id="main">
		<div class="inner">
			<div class="content">
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
							<ul class="actions stacked">
								<li><button id="login">로그인</button></li>
							</ul>
						</div>
						<div class="col-3 col-12-small">
							<ul class="actions stacked">
								<li><button
									onclick="location.href='register_type'">회원가입</button></li>
							</ul>
						</div>
						<div id="sns login" style="display:inline-block;">
						<h3 align="center">소셜 로그인</h3>
						<div class="col-3 col-12-small">
							<div id="naver_id_login">
							<img src="images/Naver.PNG" style="display:inline-block;">
							</div>
						</div>
						<div class="col-3 col-12-small">
							<a id="custom-login-btn" href="javascript:loginWithKakao()">
							<img src="images/Kakao.png">
							</a>
						</div>
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

	<!-- Scripts -->
	<script type="text/javascript">
  	var naver_id_login = new naver_id_login("8tx_pBAlod4OIxq2dlgB", "http://migusdn.cafe24.com/app/N_callback");
  	var state = naver_id_login.getUniqState();
  	naver_id_login.setDomain("http://www.ourazit.com/");
  	naver_id_login.setState(state);
  	naver_id_login.init_naver_id_login();	
      Kakao.init('066353e715aea95dfd83321a40ebd926');
      function loginWithKakao() {
        // 로그인 창을 띄웁니다.
        Kakao.Auth.login({
          success: function(authObj) {
            //alert(JSON.stringify(authObj));
            Kakao.API.request({
                url: '/v2/user/me',
                success: function(res) {
                 console.log(res);
                 var userID = res.id;      //유저의 카카오톡 고유 id
                 var userEmail = res.kakao_account.email;   //유저의 이메일
                 var userNickName = res.properties.nickname; //유저가 등록한 별명
                 console.log(userID);
                 console.log(userEmail);
                 console.log(userNickName);
                 $.ajax({
             	    url: '/N_Login',
             	    type: 'POST',
             	    dataType: 'text', //서버로부터 내가 받는 데이터의 타입
             	    contentType : 'text/plain; charset=utf-8;',//내가 서버로 보내는 데이터의 타입
             	    data: userID.toString(),
             	    success: function(data){
             	    	//alert(userID);
             	    	//alert(data);
             	         if(data == 0){
             	         console.log("Login Success");
             	         location.href="/";
             	         }else{
             	        	 
             	         	console.log("카카오로 회원가입 진행");
             	         	alert("카카오로 회원가입을 진행합니다.");
             	         	var form = document.createElement("form");
             	         	form.setAttribute("charset", "UTF-8");
             	            form.setAttribute("method", "Post");  //Post 방식
             	            form.setAttribute("action", "/register/kakao"); //요청 보낼 주소	
             	            var user_name = document.createElement("input");
             	            user_name.setAttribute("type", "hidden");
             	            user_name.setAttribute("name", "user_name");
             	            user_name.setAttribute("value", userNickName);
             	            var access_token = document.createElement("input");
             	            access_token.setAttribute("type", "hidden");
             	            access_token.setAttribute("name", "access_token");
             	            access_token.setAttribute("value", userID);
             	            var user_email = document.createElement("input");
             	            user_email.setAttribute("type", "hidden");
             	            user_email.setAttribute("name", "user_email");
             	            user_email.setAttribute("value", userEmail);
             	            var edit = document.createElement("input");
             	            edit.setAttribute("type", "hidden");
             	            edit.setAttribute("name", "edit");
             	            edit.setAttribute("value", "readonly");
             	            form.appendChild(user_name);
             	            form.appendChild(user_email);
             	            form.appendChild(access_token);
             	            form.appendChild(edit);
             	            document.body.appendChild(form);
             	            form.submit();
             	            
             	         }
             	    },
             	    error: function (){        
             	                      
             	    }
             	  });
                },
                fail: function(error) {
                 alert(JSON.stringify(error));
                }
               });
          },
          fail: function(err) {
            alert(JSON.stringify(err));
          }
        });
      };
      
  </script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
	<script src="assets/js/fontawesome.js" crossorigin="anonymous"></script>
	<script src="assets/js/login.js"></script>

</body>
</html>