<%@ page contentType="text/html" pageEncoding="utf-8"%>
<%@ page import="dao.*" %>
<%
	request.setCharacterEncoding("utf-8");

	String uid = request.getParameter("id");
	
	if ((new UserDAO()).exists(uid)) {
		new UserDAO().delete(uid);
		out.print("OK");
	}
	else if (!new UserDAO().exists(uid)) {
		out.print("NA");
	}
	else {
		out.print("ER");
	}
%>