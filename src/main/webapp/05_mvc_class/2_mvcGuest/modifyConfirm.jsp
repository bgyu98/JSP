<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board_ex.model.*,board_ex.service.*" %>

<%
	// 0. 넘겨받는 데이타의 한글 처리
	request.setCharacterEncoding("UTF-8");
%>

<!-- 1. 이전 화면의 입력값을 넘겨받아 BoardVO 객체의 각 멤버변수로 지정 -->
<jsp:useBean id="rec" class="guest.model.Message">
	<jsp:setProperty name="rec" property="*"/>
</jsp:useBean>

<%
	// 2. Service에 update() 호출하여 레코드 수정
	ModifyArticleService service = ModifyArticleService.getInstance();
	int result = service.
	
	System.out.println(result);
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판글수정</title>
</head>
<body>


<% if( result != 0) { %>
			글을 수정하였습니다.
	<% } else { %>
			수정이 실패되었습니다.
	<% } %>

</body>
</html>