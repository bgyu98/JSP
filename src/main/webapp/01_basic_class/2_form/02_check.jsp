<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%// 1) 이전 화면에서 사용자 입력값들을 얻어오기
	  // 	-- 하나만 : request.getParameter("");
	  // 	-- 여러개 : request.getParameterValues("");
	  
	  String id = request.getParameter("name");
	  String gender = request.getParameter("gender");
	  String occupation = request.getParameter("occupation");
	  String[] hobby = request.getParameterValues("hobby");
// 	  String hobbyTxt = "";
// 	  for(int i=0; hobby != null && i<hobby.length; i++){
// 		  hobbyTxt += hobby[i] + "/";
// 	  	}
	  
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>02_check</title>
</head>
<body>
	<!-- 2) 얻어온 입력값들을 화면에 출력하기 -->
	<h2>전송받은 데이터</h2>
	입력한 아이디 : <%= id %> <br>
	입력한 성별 : <%= gender %> <br>
	입력한 직업 : <%= occupation %> <br>
    입력한 취미 : <% try{ %>
    		   <% for(String h : hobby) out.print(h+" "); %>
    		   <% }catch(NullPointerException e){
    			   System.out.print(e.toString()); 
    		   }catch(Exception e){
    		   e.printStackTrace();
    		   }%>
    		   
<!-- 				향상된 for문 이전에 만듦    		    -->
    		   <%-- <% for(int i=0; i<hobby.length; i++){ %>
    		   <%= hobby[i] %> --%>
<%--     		   <% } %> --%>
    		   
	
</body>
</html>