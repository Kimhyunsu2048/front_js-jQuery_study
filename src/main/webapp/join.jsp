<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String gen = request.getParameter("gender");
%>

당신이 입력한 ID 는 <%=id %> 군요. <br>
당신이 입력한 암호 는 <%=pw %> 군요. <br>
당신의 성별은 <%=gen %> 군요.
</body>
</html>