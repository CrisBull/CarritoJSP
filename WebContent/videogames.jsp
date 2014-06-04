<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="Estilo.css" rel="stylesheet" type="text/css" />
<title>Compras: Video Games</title>
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
	<ul class="Catalogo">
	<li>
	<img alt="videog1" src="img/videog1.jpg">
	<p> Assassins Creed III </p>
	<p>Consolas: PS3, XBOX</p>
	<p>Precio: $900</p>
	<a href="addCarrito.jsp?productoKey=assassin3&producto=Assassins Creed III&precio=900&creador=XBOOX, PS3&productor=+18&descripcion=Tipo: Primera persona" class="Carrito">Agregar a Carrito</a>
	</li>
	
	<li>
	<img alt="videog2" src="img/videog2.jpg">
	<p>Dead Space 2 </p>
	<p>Consolas: PS3, XBOX, PC</p>
	<p>Precio: $700</p>
	<a href="addCarrito.jsp?productoKey=deadSpace2&producto=Dead Space 2&precio=700&creador=XBOX, PS3, PCh&productor=+18&descripcion=Tipo: Horror" class="Carrito">Agregar a Carrito</a>
	</li>

	<li>
	<img alt="videog3" src="img/videog3.jpg">
	<p>Injustice </p>
	<p>Consolas: PS3, XBOX</p>
	<p>Precio: $500</p>
	<a href="addCarrito.jsp?productoKey=injustice&producto=Injustice&precio=500&creador=PS3&productor=+13&descripcion=Tipo: Peleas" class="Carrito">Agregar a Carrito</a>
	</li>

	<li>
	<img alt="videog4" src="img/videog4.jpg">
	<p>Resident Evil Revelations </p>
	<p>Consolas: PS3</p>
	<p>Precio: $400</p>
	<a href="addCarrito.jsp?productoKey=residentRevelation&producto=Resident Evil Revelations&precio=400&creador=PS3&productor=+18&descripcion=Tipo: Primera Persona" class="Carrito">Agregar a Carrito</a>
	</li>
	<br><br>
</ul>
</article>
</section>

</body>
</html>