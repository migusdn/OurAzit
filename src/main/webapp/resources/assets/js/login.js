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
      
$(function login(){
	$("#user_password").keypress(function(e) {
		if (e.which == 13){
                   $('#login').click();
        }
    });
    // 회원 가입 처리
    $('#login').click(function(e){
        if($("#user_id").val() ==''){
            alert('아이디를 입력하세요');
            $("#user_id").focus();
            return false;
        }


        if($("#user_password").val() ==''){
            alert('비밀번호를 입력하세요');
            $("#user_password").focus();
            return false;
        }
        var data = {
                user_id:$('#user_id').val(),
                user_password:$('#user_password').val()
        }
        $.ajax({
            url: '/Login_Act',
            type: 'POST',
            data: JSON.stringify(data),
            contentType: 'text/plain; charset=utf-8',
            success: function (response) {
            	//alert(response);
                if(response == 1){
                    //alert('로그인 성공');
                    location.replace('/'); // 화면 갱신
                } else {
                    alert('아이디와 비밀번호를 확인해주세요');
                }
            },
            error: function(jqXHR, textStatus, errorThrown){
                alert("arjax error : " + textStatus + "\n" + errorThrown);
            }
        });

    });

});