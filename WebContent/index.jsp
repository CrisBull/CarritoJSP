<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="Estilo.css" rel="stylesheet" type="text/css" />
<title>WolfStore</title>
</head>
<body>
	<header>
		<div id="encabezado" class="Encabezado">
			<table>
				<td><a href= "index.jsp"> <img alt="logo" src="img/logo.png"> </a></td>
				<td><center><h1>W o l f S t o r e</h1></center></td>
			</table>
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
			//Definimos si la session esta en curso para desplegar opciones de registro e iniciar sesion
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
		<article class="index">
		<a href="Descripcion" class="Producto"> </a>
		<center><img src="img/index.jpg"> </img>
		<p>Bienvenido a WolfStore</p><br>
		<p>En ella puedes comprar articulos de entretenimiento de todo tipo...</p><br></center>
		
		</article>
	</section>
	
	<div id="piePagina" class="PiePagina">
	
	<%
	//formato de los datos de sesion
	out.println("Bienvenido");
	out.println("Sesion ID"+ session.getId() + "<br>");
	out.println("Tiempo de creación: "+ new Date(session.getCreationTime()) + "<br>");
	out.println("Utimo Acceso: "+ new Date(session.getLastAccessedTime()) + "<br>");
	out.println("Identificador del Usuario "+ session.getAttribute("userID") + "<br>");
	%>
	
	
	</div>
	





</body>
</html>