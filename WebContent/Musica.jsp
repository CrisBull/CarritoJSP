<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="Estilo.css" rel="stylesheet" type="text/css" />
<title>Compras: Musica</title>
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
	<img alt="musica1" src="img/musica1.jpg">
	<p>Disco: De Pequeño</p>
	<p>Artista: Enrique Bunbury</p>
	<p>Precio: $270</p>
	<a href="addCarrito.jsp?productoKey=musica1&producto=De Pequeño&precio=270&creador=Enrique Bunbury&productor=Sony Music&descripcion=Disco de Musica" class="Carrito">Agregar a Carrito</a>
	
	</li>
	
	<li>
	<img alt="musica2" src="img/musica2.jpg">
	<p>Disco: Licenciado de Cantinas</p>
	<p>Artista: Enrique Bunbury</p>
	<p>Precio: $300</p>
	<a href="addCarrito.jsp?productoKey=musica2&producto=Licenciado de Cantinas&precio=300&creador=Enrique Bunbury&productor=Sony Music&descripcion=Disco de Musica" class="Carrito">Agregar a Carrito</a>
	
	</li>
	
	<li>
	<img alt="musica3" src="img/musica3.jpg">
	<p>Disco: Flamingos</p>
	<p>Artista: Enrique Bunbury</p>
	<p>Precio: $295</p>
	<a href="addCarrito.jsp?productoKey=musica3&producto=Flamingos&precio=295&creador=Enrique Bunbury&productor=Sony Music&descripcion=Disco de Musica" class="Carrito">Agregar a Carrito</a>
	
	</li>
	
	<li>
	<img alt="musica4" src="img/musica4.jpg">
	<p>Disco: Pueblo Español Barcelona</p>
	<p>Artista: Enrique Bunbury</p>
	<p>Precio: $320</p>
	<a href="addCarrito.jsp?productoKey=Musica4&producto=Pueblo Español Barcelona&precio=320&creador=Enrique Bunbury&productor=Sony Music&descripcion=Disco de Musica" class="Carrito">Agregar a Carrito</a>

	</li>
	<br><br>
	</ul>
	</article>
	</section>		
	





</body>
</html>