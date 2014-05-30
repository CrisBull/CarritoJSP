<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Compras</title>
</head>
<body>
<%
out.println("Bienvenido");
out.println("Sesion ID"+ session.getId() + "<br>");
out.println("Tiempo de creación: "+ new Date(session.getCreationTime()) + "<br>");
out.println("Utimo Acceso: "+ new Date(session.getLastAccessedTime()) + "<br>");
out.println("Identificador del Usuario "+ session.getAttribute("userID") + "<br>");
%>
</body>
</html>