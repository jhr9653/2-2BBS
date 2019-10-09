<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="bbs.BbsDAO"%>
<%@ page import="bbs.Bbs"%>
<%@ page import="java.io.PrintWriter"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 사이트</title>
</head>
<Style>
	/*
	 * @brief 	게시글 수정 응답 페이지
	 *
	 * @author 	지하람
	 * @date 	2019-10-09
	 *
	 * @param 	mav ModelAndView
	 *
	 * @remark 	게시글 수정 응답 페이지	[2019-10-09; 지하람] \n
	 */
</Style>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
		if (userID == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인을 하세요.');");
			script.println("location.href='login.jsp'");
			script.println("</script>");
			script.close();
		}
		int bbsID = 0;
		if (request.getParameter("bbsID") != null) {
			bbsID = Integer.parseInt(request.getParameter("bbsID"));
		}
		if (bbsID == 0) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않은 글입니다.');");
			script.println("location.href='bbs.jsp';");
			script.println("</script>");
			script.close();
		}
		Bbs bbs = new BbsDAO().getBbs(bbsID);
		if (!userID.equals(bbs.getUserID())) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('권한이 없습니다.');");
			script.println("location.href='bbs.jsp';");
			script.println("</script>");
			script.close();
		} else {
			if (request.getParameter("bbsTitle") == null || request.getParameter("bbsTitle").equals("") || 
					request.getParameter("bbsContent") == null || request.getParameter("bbsContent").equals("")) {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('입력이 안 된 사항이 있습니다.');");
				script.println("history.back();");
				script.println("</script>");
				script.close();
			} else {
				BbsDAO bbsDAO = new BbsDAO();
				int result = bbsDAO.update(bbsID, request.getParameter("bbsTitle"), request.getParameter("bbsContent"));
				if (result == -1) {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('글쓰기에 실패하였습니다.');");
					script.println("history.back();");
					script.println("</script>");
					script.close();
				} else {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("location.href = 'bbs.jsp';");
					script.println("</script>");
					script.close();
				}
			}
		}
	%>
</body>
</html>