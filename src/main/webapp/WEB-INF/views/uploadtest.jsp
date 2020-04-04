<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<script src="/assets/js/jquery.min.js"></script>
<body>

<img id="frame">
<i class="fas fa-camera" id="file"></i>
<input multiple="multiple"type="file" accept="image/*;capture=camera" id="camera" style="display:none">
<script>
  var camera = document.getElementById('camera');
  var frame = document.getElementById('frame');
 
  camera.addEventListener('change', function(e) {
	var i=0; 
    var file = e.target.files[0]; 
    // Do something with the image file.
    frame.src = URL.createObjectURL(file);
  });
  obj = document.getElementById("file");
  obj.addEventListener("click", function(){
	  $('#camera').click();
  });
</script>

	<script src="assets/js/fontawesome.js" crossorigin="anonymous"></script>

</body>
</html>