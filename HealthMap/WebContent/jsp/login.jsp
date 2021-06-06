<%@ page contentType="text/html" pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="util.*"%>
<%@ page import="dao.*"%>
<%
UserDAO udao = new UserDAO();
	
	String uid = request.getParameter("id");
	String upass = request.getParameter("ps");
	
	String code = udao.login(uid, upass);
	if (code == "NE") {
		out.print("NE"); 
	}
	else if (code == "PE") {
		out.print("PE");
	}
	else {
		session.setAttribute("id", uid);
		session.setAttribute("uno", code);
		out.print("OK"); 
	}
%>