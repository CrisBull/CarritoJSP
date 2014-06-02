<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Enumeration"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="Estilo.css" rel="stylesheet" type="text/css" />
<title>Reporte: Compras</title>
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
	
	
	
	<section class="postsCarrito">
		<article class="post">
		
		<%
			ArrayList reporte = new ArrayList();
			String mProducto;
			double mPrecio;
			String mCreador;
			String mProductor;
			String mDescripcion;
			int mCantidad;
			
			String user = null;
			if(session.getAttribute("userID") != null){
				user = session.getAttribute("userID").toString();
				session.removeAttribute("userID");
			}
		
			String productos[]= session.getValueNames();
			double total = 0;
			for(int i = 0; i < productos.length; i++){
				reporte = (ArrayList)session.getAttribute(productos[i]);
				mProducto = reporte.get(0).toString();
				mPrecio = Double.parseDouble(reporte.get(1).toString());
				mCreador = reporte.get(2).toString();
				mProductor = reporte.get(3).toString();
				mDescripcion = reporte.get(4).toString();
				mCantidad = Integer.parseInt(reporte.get(5).toString());
				
				out.println(mProducto + "<br>");
				out.println(mPrecio + "<br>");
				out.println(mCreador + "<br>");
				out.println(mProductor + "<br>");
				out.println(mDescripcion + "<br>");
				out.println(mCantidad + "<br>");
				out.println(mCantidad * mPrecio);
				out.print("<br><br>");
				total += mCantidad * mPrecio;
			}
			
			out.println("Importe Total: " + total);
		
			if(user != null)
				session.setAttribute("userID", user);
		%>
		</article>
		
		
		<article class="compras" >
		
			<a href="Comprar">Comprar</a>
			</article>
	</section>
	
	<div id="piePagina" class="PiePagina">
	
	
	</div>


</body>
</html>