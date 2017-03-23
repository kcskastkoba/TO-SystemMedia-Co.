<%@ page import="studentManagement.StudentRecordBean" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>更新内容打ち込み</title>
</head>
<body>
	<h3>学生更新</h3>
	<%
	request.setCharacterEncoding("UTF-8");
	int GStudentNo = Integer.parseInt(request.getParameter("GStudentNo"));
	String GStudentName = request.getParameter("GStudentName");
	int GSchoolYear = Integer.parseInt(request.getParameter("GSchoolYear"));
	%>
	<form action="StudentUpdateServlet" method="get">
		学生番号：<input type="text" size="4" name="studentNo" value="<%=GStudentNo%>">
		氏名：<input type="text" size="15" name="studentName" value="<%=GStudentName%>">
		学年：<input type="text" size="1" name="schoolYear" value="<%=GSchoolYear%>">
		<input type="hidden" name="defoltNo" value="<%=GStudentNo%>">
		<input type="submit" value="更新">
	</form>
	<hr>
	<form action="studentUDView.jsp"><input type="submit" value="戻る"></form>

</body>
</html>