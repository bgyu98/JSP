<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="member.beans.MemberDao" %>

    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 회원가입  </title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	
	
	//*********************************
	//중복확인 버튼 누르면 밑에 뜨게
        $('#idchk').click(function(){
// 		alert("중복확인");
	
			      $.ajax({
			         url      : 'IdCheck.jsp',
			         data   : {id : $("input[name='id']").val()},
			         success   : function(data){
// 			            alert('<'+data+'>')
			            if(data.trim() == 'false'){
			               $('#result').text('사용 가능한 아이디 입니다.')
// 			               $('#ga').attr('disabled', false);
			               
			            }else if (data.trim() == 'true'){
			               $('#result').text('이미 존재하는 아이디 입니다.')
// 			               $('#ga').attr('disabled', true);
			            }
			         }
			      });
        })
        
        
        //*****************************
        //비밀번호 유효성 검사
        $('repassword').keyup(function(){
        	var pw =  $("input[name='password']").val();
		    var rePw = $("input[name='repassword']").val();
		    
		    if(pw == rePw){
		    	 $('#ga').attr('disabled', false);
		    }else if(pw != rePw){
		    	 $('#ga').attr('disabled', true);
		    }
		   	  $.ajax({
		         type : 'get',
		         url  : 'pwCheck.jsp',
		         data : {id : $("input[name='id']").val(),pw : $("input[name='password']").val()},
		         dataType : 'text'
        })
        
// 		$('#idchk').click(function(){
// 		      //alert('ok');
// 		      var pw =  $("input[name='password']").val();
// 		      var rePw = $("input[name='repassword']").val();
// 		      if(pw == rePw) {
// 		       $.ajax({
// 		         type : 'get',
// 		         url  : 'pwCheck.jsp',
// 		         data : {id : $("input[name='id']").val(),pw : $("input[name='password']").val()},
// 		         dataType : 'text',
// 		         success : function(data){
// 		            if(data.trim() == "true") {
// 		               alert("회원 가입이 불가능 합니다.");
// 		               $('#ga').attr('disabled', false);
// 		            } else {
// 		               alert("회원 가입이 가능 합니다.");
// 		               $('#ga').attr('disabled', true);
// 		            }
// 		         }
		         
// 		      });  
// 		   } else {
// 		      alert("비밀번호가 일치하지 않습니다.");
// 		      $('#ga').attr('disabled',false);
// 		   }
		      
// 		   });
	
	
	
	
	
	//***********************************
	// 회원가입 버튼 누르면 DB로 넘어감
	
	$('#newbie').click(function(){
		var param = {name : $('name').val(), password :$('password').val(), tel : $('tel').val() , id : $('id').val(),addr : $('#addr').val()};
// 		alert(param);
		$.ajax({
			url : 'Member_Id_Check.jsp',
			type : 'post',
			data : param,
			success : function(data){
				//alert('<'+data+'>');
				if(data.trim() == '1') {				// 클라이언트와 서버 교류시 공백이 생기므로 공백 제거
					alert("입력 성공");
					// 화면 입력값을 초기화
					$('name').val('');
					$('age').val('');
					$('tel').val('');
					$('addr').val('');
					$('password').val('');
				} else {
					alert("입력 실패");
				}
			}
		});
	})
})

</script>
</head>
<body>

<h1>회원가입서 작성하기</h1>
 
	<form action="InsertMember.jsp" method="post" name="frm">
		<table>
			<tr>
				<td width="100">
				<font color="blue">아이디</font>
				</td>
				<td width="100">
				<input type="text" name="id" required>
				<input type="button" value="중복확인" id="idchk">
				<div id='result'></div>
				</td>
			</tr>
			<tr>
				<td width="100">
				<font color="blue">비밀번호</font>
				</td>
				<td width="100">
				<input type="password" name="password" required/><br/>
				</td>
			</tr>
			<tr>
				<td width="100">
				<font color="blue">비밀번호학인</font>
				</td>
				<td width="100">
				<input type="password" name="repassword" required/><br/>
				</td>
			</tr>
			<tr>
				<td width="100">
				<font color="blue">이름</font>
				</td>
				<td width="100">
				<input type="text" name="name" required/><br/>
				</td>
			</tr>
			<tr>
				<td width="100">
				<font color="blue">전화번호</font>
				</td>
				<td>
				<input type="text" size="15" name="tel" required/>
				<br/>
				</td>
			</tr>
			<tr>
				<td width="100">
				<font color="blue">주소</font>
				</td>
				<td>
				<input type="text" size="50" name="addr"/><br/>
				</td>
			</tr>
			<tr>
				<td width="100">
				 <!--로그인 버튼-->
				 <input id="ga" type="submit" value="회원가입"disabled>
				</td>
				<td width="100">
				<input type="reset" name="cancel" value="취소"><br/>
				</td>
			</tr>
		</table>
	</form>



 </body>
</html>
    