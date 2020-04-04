<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://js.live.net/v7.2/OneDrive.js"></script>
</head>
<body>
	<script type="text/javascript">
		function launchSaveToOneDrive() {
			var odOptions = {
				/* ... specify the desired options ... */
				clientId : "1d705f10-88f2-492f-97ca-0eb1992c9744",
				action : "save",
				sourceInputElementId : "fileUploadControl",
				sourceUri : "",
				fileName : "file.txt",
				openInNewWindow : true,
				advanced : {},
				success : function(files) { console.log("su");
				},
				progress : function(percent) { /* progress handler */
				},
				cancel : function() { /* cancel handler */
				},
				error : function(error) { console.log(error);
				}
			};
			OneDrive.save(odOptions);
		}
	</script>

	<input id="fileUploadControl" name="fileUploadControl" type="file" />
	<button onclick="launchSaveToOneDrive">Save to OneDrive</button>
</body>
</html>