<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="Estilo.css" rel="stylesheet" type="text/css" />
<title>Compras: Peliculas</title>
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
					
		<% //Definimos si la session esta en curso para desplegar opciones de registro e iniciar sesion
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
	<img alt="pelicula1" src="img/pelicula1.jpg">
	<p>X-men: Dias del futuro pasado </p>
	<p>Creador: Marvel</p>
	<p>Precio: $580</p>
	<a href="addCarrito.jsp?productoKey=pelicula1&producto=X-men Dias del futuro pasado&precio=580&creador=Marvel Comics&productor=Century Fox&descripcion=Pelicula" class="Carrito">Agregar a Carrito</a>
	</li>
	
	<li>
	<img alt="pelicula2" src="img/pelicula2.jpg">
	<p>Pelicua: Los Vengadores </p>
	<p>Creador: Marvel</p>
	<p>Precio: $478</p>
	<a href="addCarrito.jsp?productoKey=pelicula2&producto=Los Vengadores&precio=478&creador=Marvel Comics&productor=Century Fox&descripcion=Pelicula" class="Carrito">Agregar a Carrito</a>
	</li>

	<li>
	<img alt="pelicula3" src="img/pelicula3.jpg" >
	<p>Pelicua: El Capitán América </p>
	<p>Creador: Marvel</p>
	<p>Precio: $378</p>
	<a href="addCarrito.jsp?productoKey=pelicula3&producto=El Capitan America&precio=378&creador=Marvel Comics&productor=Century Fox&descripcion=Pelicula" class="Carrito">Agregar a Carrito</a>
	</li>
	
	<li>
	<img alt="pelicula4" src="img/pelicula4.jpg" >
	<p>Pelicua: Iron Man </p>
	<p>Creador: Marvel</p>
	<p>Precio: $320</p>
	<a href="addCarrito.jsp?productoKey=pelicula4&producto=Iron Man&precio=320&creador=Marvel Comics&productor=Century Fox&descripcion=Pelicula" class="Carrito">Agregar a Carrito</a>
	</li>
	<br><br>
	
	</ul>
	
	</article>
	</section>

</body>
</html>