<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	// �� �κ��� jsp ��ũ��Ʈ �ڵ��, �ڹٸ� �̿��� �������α׷����� ���⿡ �����մϴ�. �� ��� ������ ������, ������ �����Դϴ�.
	
	// Ŭ���̾�Ʈ�� ��û�� ���(method) �� �˾ƺ��Կ�.
	// ��ҹ���, ���� �ϳ����� �Ȱ��� ġ����.
	request.setCharacterEncoding("utf-8"); // post �� �ѱ۱��� ����
	String method = request.getMethod();

	// jsp ������ ��û �Ķ���͸� �˾Ƴ��� ��ü�� request ��ü�Դϴ�.
	// ���Ǵ� �޼���� getParameter("keyName"), ���ڿ�(String) ���� �����մϴ�. �ݵ�� String �̶�� Ÿ���� ����ؾ��մϴ�.
	
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
����� ������ ��û�� �޼���� <%=method %> ����.<br>
����� ���� �����ʹ� id : <%=id %>, pw : <%=pw %> ����.<br>
pi �� : <%=pi %>

</body>
</html>