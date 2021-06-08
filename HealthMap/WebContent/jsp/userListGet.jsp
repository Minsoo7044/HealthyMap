<%@ page contentType="text/html" pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="util.*"%>
<%@ page import="dao.*"%>
<%
  UserDAO udao = new UserDAO();
   String str = udao.getList();
   out.print(str);
%>