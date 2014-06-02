<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="Estilo.css" rel="stylesheet" type="text/css" />
<title>Compras: Libros</title>
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
		<article class="post">
		<ul class="Catalogo">
	<li>
	<img alt="libro1" src="img/libro1.jpg">
	<p>Libro: La Sombra</p>
	<p>Autor: John Katzenbach</p>
	<p>Precio: $380</p>
	<a href="addCarrito.jsp?productoKey=libro1&producto=La sombra&precio=380&creador=John Katzenbach&productor=La Trama&descripcion=Libro de suspenso" class="Carrito">Agregar a Carrito</a>
	</li>
	<li>
	<img alt="libro2" src="img/libro2.jpg">
	<p>Libro: La Historia del Loco</p>
	<p>Autor: John Katzenbach</p>
	<p>Precio: $350</p>
	<a href="addCarrito.jsp?productoKey=libro2&producto=La historia del loco&precio=350&creador=John Katzenbach&productor=La Trama&descripcion=Libro de suspenso" class="Carrito">Agregar a Carrito</a>
	</li>
	<li>
	<img alt="libro3" src="img/libro3.jpg">
	<p>Libro: Al Calor del Verano</p>
	<p>Autor: John Katzenbach</p>
	<p>Precio: $270</p>
	<a href="addCarrito.jsp?productoKey=libro3&producto=Al calor del verano&precio=270&creador=John Katzenbach&productor=La Trama&descripcion=Libro de suspenso" class="Carrito">Agregar a Carrito</a>
	</li>
	<li>
	<img alt="libro4" src="img/libro4.jpg">
	<p>Libro: Retrato en Sangre</p>
	<p>Autor: John Katzenbach</p>
	<p>Precio: $320</p>
	<a href="addCarrito.jsp?productoKey=libro4&producto=Retrato en sangre&precio=320&creador=John Katzenbach&productor=La Trama&descripcion=Libro de suspenso" class="Carrito">Agregar a Carrito</a>
	</li>
	<br><br>
	</ul>
	</article>
	</section>
	

</body>
</html>