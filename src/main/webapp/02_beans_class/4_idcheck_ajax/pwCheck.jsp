<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member.beans.MemberDao" %>  
<%
   String id = request.getParameter("id");
   String pw = request.getParameter("password");
   
   if(pw == "" || pw == "null") {
      out.print("비밀번호를 입력하세요");
      return;
   }
   
    MemberDao dao = MemberDao.getInstance();   
    boolean result = dao.checkLogin(id, pw);

    if (result) {out.print(true);}
    else      {out.print(false);}

%>