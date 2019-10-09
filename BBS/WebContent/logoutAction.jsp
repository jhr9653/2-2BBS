<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 사이트</title>
</head>
<Style>
	/*
	 * @brief 	로그아웃 응답 페이지
	 *
	 * @author 	지하람
	 * @date 	2019-10-09
	 *
	 * @param 	mav ModelAndView
	 *
	 * @remark 	로그아웃 응답 페이지	[2019-10-09; 지하람] \n
	 */
</Style>
<body>
	<%
		session.invalidate(); 				//세션을 무효화 시킴
	%>
	<script>
		location.href = 'main.jsp';
	</script>
</body>
</html>