<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="Estilo.css" rel="stylesheet" type="text/css" />
<title>wolfStore</title>
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
	
	<section class="capturaDatos">
		<article class="post">
		<a href="Descripcion" class="Producto"> </a>
			<center><br><p>Nuevo Usuario</p></center>
			
			
			<!-- form que ejecuta la class insertar.java mediante enviar -->
			<form method="POST" action="Insertar" name="iniciar sesion">
			<center>
			<table>
			<tr>
			<td>
			Correo</td><td><input type="text" name="user" required/> </td>
			</tr>
			<tr>
			<td>
			Contraseña</td><td><input type="password" name="password" required/></td>
			</tr>
			<tr>
			<td>
			Confirmar Contraseña</td><td><input type="password" name="rpassword" required /></td>
			</tr>
			</table>
			<input type="submit"  value="Enviar"/>&nbsp;</center>
			</form>
			
			<!-- form cancelar retorna el index -->
			<form method="post" action="index.jsp" name="cancelar">
			<center><input type="submit" name="index.jsp" value="Cancelar"/></center>
			<br>
			</form>
			
		</article>
	</section>
	
	<div id="piePagina" class="PiePagina">
	
	
	</div>


</body>
</html>