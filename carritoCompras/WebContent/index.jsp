<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="Estilo.css" rel="stylesheet" type="text/css" />
<title>wOlfForce</title>
</head>
<body>
	<header>
		<div id="encabezado" class="Encabezado">
		
		
		</div>
	</header>
	
	<nav>
		<ul class="menu">
		<li><a href="index.jsp">Inicio</a></li>
		<li><a href="Libros.jsp">Libros</a></li>
		<li><a href="Peliculas.jsp">Peliculas</a></li>
		<li><a href="Musica.jsp">Musica</a></li>
		<li><a href="videogames.jsp">Video Games</a></li>
		<li><a href="Carrito.jsp">Carrito de Compras</a></li>
		<% 
			if(session.getAttribute("userID") == null){
				out.print("<li><a href=\"iniciarSesion.html\">Iniciar Session</a></li> ");
				out.print("<li><a href=\"registro.jsp\">Registrarse</a></li>");
			}
			else{
				out.print("<li>" + session.getAttribute("userID") + "</li>");
				out.print("<li><a href=\"cerrarSesion.jsp\"> Cerrar Sesión</a></li>");
			}
		%>
		</ul>
	</nav>
	
	<section class="posts">
		<article class="post">
		<a href="Descripcion" class="Producto"> </a>
		
		</article>
	</section>
	
	<div id="piePagina" class="PiePagina">
	
	
	</div>
	

<%
out.println("Bienvenido");
out.println("Sesion ID"+ session.getId() + "<br>");
out.println("Tiempo de creación: "+ new Date(session.getCreationTime()) + "<br>");
out.println("Utimo Acceso: "+ new Date(session.getLastAccessedTime()) + "<br>");
out.println("Identificador del Usuario "+ session.getAttribute("userID") + "<br>");
%>




</body>
</html>