<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	// 이 부분은 jsp 스크립트 코드로, 자바를 이용한 서버프로그래밍을 여기에 정의합니다. 이 블락 밖으로 빠지면, 무조건 에러입니다.
	
	// 클라이언트가 요청한 방식(method) 를 알아볼게요.
	// 대소문자, 공백 하나까지 똑같이 치세요.
	request.setCharacterEncoding("utf-8"); // post 시 한글깨짐 방지
	String method = request.getMethod();

	// jsp 에서는 요청 파라미터를 알아내는 객체가 request 객체입니다.
	// 사용되는 메서드는 getParameter("keyName"), 문자열(String) 으로 리턴합니다. 반드시 String 이라는 타입을 명기해야합니다.
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	//[]
	String locale[] = request.getParameterValues("kk");
	
	if(locale != null){
		for(int i = 0; i<locale.length; i++){
			String value = locale[i];
%>			
			<%=value %>,
<%
		}
	}
	
	int age = 30;
	double pi = 3.14;
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
당신이 서버에 요청한 메서드는 <%=method %> 군요.<br>
당신의 보낸 데이터는 id : <%=id %>, pw : <%=pw %> 군요.<br>
pi 값 : <%=pi %>

</body>
</html>