<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ page import="guest.model.*,guest.service.*" %> --%>
<%@ page import="mvc.guest.model.*" %>
<%@ page import="java.util.List" %>
 
<%
	String pNum = request.getParameter("page");
	
	// 전체 메세지 레코드 검색 
	ListMessageService service = ListMessageService.getInstance();
	List <Message> mList = (List <Message>) request.getAttribute("param");
	List <Message> mList1 =  service.getMessageList(pNum);
	
	int totalPageCount = service.getTotalPage();
	
	int prev = 0;
	int next = 0;
	
	if(pNum == null){
		prev = 1 ;
		next = 2 ;
	}else{
		if(Integer.parseInt(pNum)==1){
			prev = 1 ;
			next = 2 ;
		}else if(Integer.parseInt(pNum)==totalPageCount){
			prev = Integer.parseInt(pNum) - 1;
			next = totalPageCount;
		}else{
			prev = Integer.parseInt(pNum) - 1;
			next = Integer.parseInt(pNum) + 1;
			
		}
	}
		
 	
%>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 방명록 목록 </title>
</head>
<body>

	<% if( mList1.isEmpty() ) { %>
		남겨진 메세지가 하나도~~없습니다. <br>
	<% } else { %>
	<table border="1">
	
		<% for(Message m : mList1){ %>
		<tr>	
			<td> <%= m.getMessageId() %> </td> 
			<td> <%= m.getGuestName() %> </td> 
			<td> <a href="GuestControl?cmd=modify-form&id=<%= m.getMessageId() %>"> [ 수정 ]</a>   			
			<a href="GuestControl?cmd=delete-form&id=<%= m.getMessageId() %>"> [ 삭제 ]</a> </td>			
		</tr>
		<tr>
			<td colspan='3'> 
			<textarea cols=35 rows=3 style="font-family: '돋움', '돋움체'; font-size: 10pt; font-style: normal; line-height: normal; color: #003399;background-color:#D4EBFF;border:1 solid #00009C;"><%= m.getMessage() %>
			</textarea>
			</td>
		</tr>
		<% } //end of for %>

	</table>
	
	<% } // end if-else %>
	<a href="GuestControl?cmd=input-form">방명록 남기기</a>
	<hr/>
	
	<% int i = 1;%>
	<a href="GuestControl?cmd=list-page&page=<%= prev %>">[이전]</a>
	<% for(i = 1; i<=totalPageCount; i++){ %>
		<a href="GuestControl?cmd=list-page&page=<%=i%>">[<%= i %>]</a>
	<%}//end of for %>
	<a href="GuestControl?cmd=list-page&page=<%= next %>">[다음]</a>
</body>
</html>