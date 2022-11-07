<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mybatis.guest.model.Comment" %>    
<%@ page import="mybatis.guest.service.CommentService" %>  

<jsp:useBean id="comment" class="mybatis.guest.model.Comment">
 	<jsp:setProperty name="comment" property="*"/>
 </jsp:useBean>   
 
<%
 CommentService.getInstance().deleteComment(comment);
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>deleteform</title>
</head>
<body>
삭제되었습니다.
<a href="listComment.jsp">목록보기</a>
</body>
</html>