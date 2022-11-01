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
/* $(function(){
	$('#chk').click(function(){
		var id = document.frm.id.value;
		window.open("CheckId.jsp?userId="+id,"","width=200, height=150");
	})
	$('#ga').click(function(){
	})
}) */
function openWin(){                        // ID 중복체크 기능
      var id = document.frm.id.value;            // id text 필드의 입력값 가져옴
      window.open("CheckId.jsp?userId="+id,"","width=200, height=150");
      alert(id);// 새 창에서 CheckID 실행
// 		boolean idChk = CheckId.jsp?userId == id;
// 		alert(idChk);
		
   }
   
   function pwChk() {                           // 비밀번호 중복 확인 기능
      var pw = document.frm.password.value;         // password text 필드의 입력값
      var rePw = document.frm.repassword.value;      // repassword text 필드의 입력값
      if(pw != rePw) {                        // 두개의 value가 일치하지 않을 경우
         alert("비밀번호가 일치하지 않습니다.");            // 사용자에게 일치하지 않는다는 alert 전송
         
         return false;                        // 함수 실행의 결과를 boolean type으로 false로 전송
      }
   }
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
				<input type="button" value="중복확인" id="chk" onclick="openWin()"><br/>
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
				 <input id="ga" type="submit" value="회원가입" onclick="return pwChk()">
				</td>
				<td width="100">
				<input type="reset" name="cancel" value="취소"><br/>
				</td>
			</tr>
		</table>
	</form>



 </body>
</html>
    