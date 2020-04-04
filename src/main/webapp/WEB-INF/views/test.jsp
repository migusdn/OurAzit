<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/cropperjs/1.5.6/cropper.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/cropperjs/1.5.6/cropper.min.css">

<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="/assets/css/main.css" />
<script src="/assets/js/jquery.min.js"></script>

<script src="https://unpkg.com/swiper/js/swiper.min.js"></script>
<link rel="stylesheet" href="https://unpkg.com/swiper/css/swiper.min.css">
<style>
.preview{
	overflow: hidden;
	width:33.3%;
	height: 216px;
	display: inline-block;
}
.swiper-slide{
	width:100%;
}
#image{
	max-width:100%;
	display:block;
}

</style>



</head>
<body class="is-preload">
	<!-- Header -->
	<header id="header">
		<i class="fas fa-camera" id="file"></i> <a class="logo" href="index.html">OurAzit</a> <i class="fas fa-paper-plane"></i>
		<input multiple="multiple"type="file" accept="image/*;capture=camera" id="camera" style="display:none">
	</header>
	<div class="wrapper">
		<div class="preloadpoat">
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<!-- <div class="swiper-slide"style="width:100%;">
					<img id="image" src="/images/test.jpg" style="max-width: 100%%; display: block;">
					</div>
					<div class="swiper-slide"style="width:100%;">
					<img id="image" src="/images/test1.jpg" style="max-width: 100%%; display: block;">
					</div>
					<div class="swiper-slide"style="width:100%;">
					<img id="image" src="/images/test.jpg" style="max-width: 100%; display: block;">
					</div><div class="swiper-slide" style="width:100%;">
					<img id="image" src="/images/test4.jpg" style="max-width: 100%; display: block;">
					</div> -->
				</div>
				
			</div>
			<div class = "preview_wrapper"style="line-height: 0; display: block;">
				<!-- <img class="" style="margin: 0; padding: 0;" src="images/img01.JPG" width="33.3%" />
 -->
			</div>




		</div>
	</div>
<script>
	var device_width = window.innerWidth;
	var file = 
	document.getElementById("file").addEventListener("click", function(){
		$('#camera').click();
	});
	camera.addEventListener('change', function(e) {
		var i; 
	    var files = e.target.files; 
	    // Do something with the image file.
	    var html;
	    for(i=0;i<files.length; i++){
	    	html +='<div class="swiper-slide">';
			html +='<img id="image" src="'+URL.createObjectURL(files[i])+'">';
			html +='</div>';
	    }
	    
	  });
	$(".swiper-slide").css("height",device_width);
	
	/* cropper options */
	var c_options = {
			viewMode : 3,
			dragMode : 'move',
			aspectRatio : 1 / 1,
			highlight : false,
			background : false,
			rotatable : false,
			zoomOnWheel : false,
			autoCropArea : 1,
			cropBoxResizable : false,
			cropBoxMovable : false,
		}
	/* cropper init func */
	
	var croppers = [];
	function crop_init(){
		var images = document.querySelectorAll('#image');
		var length = images.length;
		var i;
		for(i=0; i<length; i++){
			c_options.preview = '#preview_'+i;
			console.log(c_options);
			$(".preview_wrapper").append('<div class="preview" id="preview_'+i+'" page="'+i+'"></div>');
			croppers.push(new Cropper(images[i], c_options));
		}
	}
	crop_init();
		/* 
	
		var cropperr = new Cropper(image, c_options); */
	</script>
	<script>
	<!-- swiper init -->
	
    var swiper = new Swiper('.swiper-container', {
    	allowTouchMove:false
    });
	$(document).on('click', '.preview', function(){
		let page_num = $(this).attr('page');
		console.log(page_num);
		swiper.slideTo(page_num);
	});
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
	<script src="assets/js/fontawesome.js" crossorigin="anonymous"></script>
</body>
</html>