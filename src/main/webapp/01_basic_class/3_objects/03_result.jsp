<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%  
        request.setCharacterEncoding("utf-8");
        String name = request.getParameter("name");
    	String[] animal = request.getParameterValues("animal"); 
    	String choosePet = "";
    	for(int i=0; animal!=null && i<animal.length; i++){
    		choosePet += animal[i];
    	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>03_result.jsp</title>
</head>
<body>

<!-- 이전 화면에서 사용자 입력값을 얻어와서 화면 출력 -->
<!-- -request.getParameter("")
	 -request.getParameterValues("") -->
	 
이름 : <%= name %><br/>
동물 : <%= choosePet %>

</body>
</html>