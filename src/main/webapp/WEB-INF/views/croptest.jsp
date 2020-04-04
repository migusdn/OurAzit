<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Cropper.js</title><script src="https://cdnjs.cloudflare.com/ajax/libs/cropperjs/1.5.6/cropper.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/cropperjs/1.5.6/cropper.min.css">
  
  <style>
    .container {
      max-width: 100%;
    }

    img {
      max-width: 100%;
      height:375px;
    }
  </style>
</head>
<body style="margin:0px;">
  <div class="container">
    <h1>Cropper with full crop box</h1>
    <div>
      <img id="image" src="https://fengyuanchen.github.io/cropperjs/images/picture.jpg" alt="Picture">
    </div>
  </div>
  <script>
    window.addEventListener('DOMContentLoaded', function () {
      var image = document.querySelector('#image');
      var cropper = new Cropper(image, {
        viewMode: 3,
        dragMode: 'move',
        autoCropArea: 1,
		aspectRatio : 1 / 1,
        restore: false,
        modal: false,
        guides: false,
        highlight: false,
        cropBoxMovable: false,
        cropBoxResizable: false,
        toggleDragModeOnDblclick: false,
      });
    });
  </script>
</body>
</html>