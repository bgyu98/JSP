<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="mybatis.guest.model.Comment" %>    
<%@ page import="mybatis.guest.service.CommentService" %>  
<jsp:useBean id="comment" class="mybatis.guest.model.Comment">
<jsp:setProperty name="comment" property="*"/>
</jsp:useBean>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update</title>
</head>
<body>
<form name="frm" action="updateCommentSave.jsp" >
<table>
	<tr><td>글번호</td><td><input type="text" name="commentId" size="3" value='<%=comment.getCommentNo() %>'></td></tr>
	<tr><td>사용자</td><td><input type="text" name="userId" size="15" value='<%= comment.getUserId()%>'/></td></tr>
	<tr><td>메세지</td><td><textarea name="commentContent" rows="10" columns="40"><%= comment.getCommentContent() %></textarea></td></tr>
	<tr><td><input type="submit" value="수정"/></td></tr>
</table>
</form>
<a href="listComment.jsp">목록보기</a>
</body>
</html>