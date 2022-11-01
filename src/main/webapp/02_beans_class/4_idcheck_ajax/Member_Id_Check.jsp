<%@ page language="java" import="java.sql.*"%>
<%
String driver="oracle.jdbc.driver.OracleDriver";
String user="scott";
String pass="tiger";
String dbURL="jdbc:oracle:thin:@localhost:1521:xe";

request.setCharacterEncoding("utf-8");
String id  = request.getParameter("id");
String name  = request.getParameter("name");
String password = request.getParameter("password");
String tel = request.getParameter("tel");
String addr= request.getParameter("addr");


	Class.forName(driver);
	Connection connection=DriverManager.getConnection(dbURL,user,pass);		
	
	String sql = "insert into MemberTest(id, password, name, tel, addr) values(?,?,?,?,?)";
	
	PreparedStatement ps = connection.prepareStatement(sql);
	ps.setString(1,id);
	ps.setString(2,password);
	ps.setString(3,name);
	ps.setString(4,tel);
	ps.setString(5,addr);
	int result = ps.executeUpdate();		

	ps.close();
	connection.close();
	
	out.write(String.valueOf(result));
%>