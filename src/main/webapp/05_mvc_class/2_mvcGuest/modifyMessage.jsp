<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board_ex.service.*, board_ex.model.*" %>
<%-- <%@ page import="mvc.guest.model.*" %> --%>

<%
	String messageId = request.getParameter("id");	
	System.out.print(messageId);
	
// 	ViewArticleService service = ViewArticleService.getInstance();
// 	BoardVO vo = service.getArticleById(seq);
%>
    
<% 
ViewArticleService service = ViewArticleService.getInstance();
Message vo = service.getArticleById(messageId);
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시글 수정하기</title>
</head>
 <body>
	<h4> 게시판 글 수정하기 </h4><br/>
	<form name='frm' method='get' action="GuestControl?cmd=modify-firm">
		<input type="hidden" name='id' value="<%= messageId %>"/>
	작성자 : <input type='text' name="guset_name" value="<%= vo.getGuestName() %>"><br/><br/>
	패스워드(수정/삭제시 필요) :
			<input type='password' name="pass" ><br/><br/>
	메세지 : <textarea name='message' rows='10' cols='40'><%= vo.getMessage() %></textarea><br/><br/>

	<input type='submit' value='수정하기' onclick="window.location='BoardModify.jsp'">
	<input type='button' value='목록보기' onclick="window.location='BoardList.jsp'">
	</form>

</body>
</html>