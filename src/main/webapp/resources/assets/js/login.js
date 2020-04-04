$(function login(){
	
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
            	alert(response);
                if(response == 1){
                    alert('로그인 성공');
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