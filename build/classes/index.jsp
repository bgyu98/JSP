<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%! String msg; %>
<%! int i = 3; %>
<%! int j = 3; %>
<%
	msg = "안녕하세요~~";	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- html -->
<%-- jsp --%>
<% //java %>

메세지 : <%= msg %><br>
오바지 : <%= i*j %>
</body>
</html>