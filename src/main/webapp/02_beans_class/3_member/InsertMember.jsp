<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member.beans.MemberDao" %>

<!-- 하나씩 천천히 도전합시다 -->
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="m" class="member.beans.Member">
      <jsp:setProperty property="*" name="m"/>      <!--  ASCII CODE 입력되면 * 만 입력해도 다 받을 수 있음 -->
</jsp:useBean>

<%
	   MemberDao dao = MemberDao.getInstance();
	   dao.insert(m);
%>
	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 회원가입 확인222  </title>
</head>
<body>
   아이디2 : <%=m.getId() %><br>
   패스워드 :<%=m.getPassword() %><br>
   이름 : <%=m.getName() %><br>
   전화 : <%=m.getTel() %><br>
   주소 : <%=m.getAddr() %><br>
</body>
</html>