<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Compras: Agregadas</title>
</head>
<body>
<%

	String productoKey = request.getParameter("productoKey").toString();
	
	String producto = request.getParameter("producto").toString();
	double precio = Double.parseDouble(request.getParameter("precio").toString());
	String creador = request.getParameter("creador").toString();
	String productor = request.getParameter("productor").toString();
	String descripcion = request.getParameter("descripcion").toString();
	
	
	if(session.getAttribute(productoKey) == null){
		ArrayList datos = new ArrayList();
		datos.add(0, producto);
		datos.add(1, precio);
		datos.add(2, creador);
		datos.add(3, productor);
		datos.add(4, descripcion);
		datos.add(5, 1);
	
		session.setAttribute(productoKey, datos);
	}
	else{
		ArrayList obtenerTemp = (ArrayList)session.getAttribute(productoKey);
		int tempCantidad = Integer.parseInt(obtenerTemp.get(5).toString());
		obtenerTemp.set(5, tempCantidad + 1);
		session.setAttribute(productoKey, obtenerTemp);
	}
	
	ArrayList mostrar = (ArrayList)session.getAttribute(productoKey);
	String mProducto = mostrar.get(0).toString();
	String mPrecio = mostrar.get(1).toString();
	String mCreador = mostrar.get(2).toString();
	String mProductor = mostrar.get(3).toString();
	String mDescripcion = mostrar.get(4).toString();
	int mCantidad = Integer.parseInt(mostrar.get(5).toString());
	
	out.println(mProducto + "<br>");
	out.println(mDescripcion + "<br>");
	out.println(mPrecio + "<br>");
	out.println(mCantidad + "<br>");
	out.println(mCreador + "<br>");
	out.println(mProductor + "<br>");
	response.sendRedirect("Carrito.jsp");

%>
</body>
</html>