<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OurAzit</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/cropperjs/1.5.6/cropper.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/cropperjs/1.5.6/cropper.min.css">

<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="/assets/css/main.css" />
<script src="/assets/js/jquery.min.js"></script>

<script src="https://unpkg.com/swiper/js/swiper.min.js"></script>
<link rel="stylesheet" href="https://unpkg.com/swiper/css/swiper.min.css">
<style>
.preview {
	overflow: hidden;
	width: 33.3%;
	height: 216px;
	display: inline-block;
}

.swiper-slide {
	width: 100%;
}

#image {
	max-width: 100%;
	display: block;
}

.wrap-loading { /*화면 전체를 어둡게 합니다.*/
	position: fixed;
	left: 0;
	right: 0;
	top: 0;
	bottom: 0;
	background: rgba(0, 0, 0, 0.2); /*not in ie */
	filter: progid:DXImageTransform.Microsoft.Gradient(startColorstr='#20000000',
		endColorstr='#20000000'); /* ie */
}

.wrap-loading div { /*로딩 이미지*/
	position: fixed;
	top: 50%;
	left: 50%;
	margin-left: -21px;
	margin-top: -21px;
}

.display-none { /*감추기*/
	display: none;
}
</style>



</head>
<body class="is-preload">
	<!-- Header -->
	<header id="header">
		<i class="fas fa-camera" id="file"></i> <a class="logo" href="index.html">OurAzit</a> <i id="confirm" class="fas fa-paper-plane"></i> <input multiple="multiple" type="file" accept="image/*;capture=camera" id="camera" style="display: none" accept="image/*">
	</header>
	<div class="wrapper">
		<div class="preloadpoat">
			<input type="text" id="comment" placeholder="문구 입력" style="width: 100%; color: white;">
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
			<div class="preview_wrapper" style="line-height: 0; display: block;">
				<!-- <img class="" style="margin: 0; padding: 0;" src="images/img01.JPG" width="33.3%" />
 -->
			</div>




		</div>
	</div>
	<div class="wrap-loading display-none">
    	<div><img src="images/loading.gif" /></div>
	</div>
	<script>
	var device_width = window.innerWidth;
	document.getElementById("file").addEventListener("click", function(){
		$('#camera').click();
	});
	var files = [];	//upload file temp
	var swiper;
	var croppers = [];	//cropper objects
	var uploadResult = []; //upload result json
	/* file temp change */ 
	camera.addEventListener('change', function(e) {
		var i; 
	    files = e.target.files; 
	    // Do something with the image file.
	    var html="";
	    console.log('file length: '+files.length);
	    for(i=0;i<files.length; i++){
	    	html +='<div class="swiper-slide">';
			html +='<img id="image" src="'+URL.createObjectURL(files[i])+'">';
			html +='</div>';
	    }
	    console.log(html);
	    $('.swiper-wrapper').append(html);
	    $(".swiper-slide").css("height",device_width);
		crop_init();
		swiper_init();
	});
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
		/* 
	
		var cropperr = new Cropper(image, c_options); */
	</script>
	<script>
	/* swiper init func */
	function swiper_init(){
    swiper = new Swiper('.swiper-container', {
    	allowTouchMove:false
    });
	
	}
	/* swiper page move */
	$(document).on('click', '.preview', function(){
		let page_num = $(this).attr('page');
		/* console.log(page_num); */
		swiper.slideTo(page_num);
	});
	/* img file upload ext img server and post main server */
	$(document).on('click', '#confirm', function(){
		if(files.length == 0){
			alert('파일을 올리세요.');
			return;
		}
        $('.wrap-loading').removeClass('display-none');
		var i;
		for(i=0;i<croppers.length; i++){


			croppers[i].getCroppedCanvas({
				maxWidth: 1024,
				maxHeight: 1024,
			}).toBlob((blob) => {
				const formData = new FormData();
				formData.append('file', blob);
				$.ajax({
					type: 'POST',
					enctype: 'multipart/form-data',
					url: "http://api.ourazit.com/upload",
					data: formData,
					processData: false,
					contentType: false,
					async: false,
					success: function(result){ 
						console.log(result);
						uploadResult.push(result);
					},
					error: function(e){
						console.log('upload fail');
						console.log(e);
					},
				});
			});
		}
		
	});
	var ajax_ctn = 0;

	var post_content = new Object();
	$(document).ajaxStop(function(){
		ajax_ctn++;
		if(ajax_ctn==files.length){
			post_content.comment = document.getElementById('comment').value;
			post_content.contents = uploadResult;
			console.log(JSON.stringify(post_content));
			const fdata = new FormData();
			fdata.append('user_id', '${sessionScope.user_id}');
			fdata.append('post_content', JSON.stringify(post_content));
			fdata.append('post_title', 'testpost');
			$.ajax({
				url : '/postWrite',
				processData : false,
				contentType : false,
				data : fdata,
				type : 'POST',
				success : function(result) {
			        $('.wrap-loading').addClass('display-none');
					location.href = "/";
					
				}
			});
		}
			
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