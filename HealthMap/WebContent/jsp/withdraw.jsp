<%@ page contentType="text/html" pageEncoding="utf-8"%>
<%@ page import="dao.*" %>
<%
	request.setCharacterEncoding("utf-8");

	String uid = request.getParameter("id");
	
	if ((new User1DAO()).exists(uid)) {
		new User1DAO().delete(uid);
		out.print("OK");
	}
	else if (!new User1DAO().exists(uid)) {
		out.print("NA");
	}
	else {
		out.print("ER");
	}
%>