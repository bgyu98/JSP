<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="member.beans.MemberDao" %>

<%
String id = request.getParameter("id");

if(id == "" || id == "null") {
    out.print("1");
    return;
 }

MemberDao dao = MemberDao.getInstance();
boolean idChk = dao.isDuplicatedId(id);



if (idChk){out.print(true);}
else	  {out.print(false);}

%>

