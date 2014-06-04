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
		ArrayList datos = new ArrayList();		//ArrayList para definir el orden en el que se agregan los datos de compra 
		datos.add(0, producto);
		datos.add(1, precio);
		datos.add(2, creador);
		datos.add(3, productor);
		datos.add(4, descripcion);
		datos.add(5, 1);
	
		session.setAttribute(productoKey, datos);	//Damos de alta los datos del producto relacionado con el ID del ArrayList
	}
	else{
		ArrayList datosTemporales = (ArrayList)session.getAttribute(productoKey);		//obtenemmos los datos contenidos en la key 
		int tempCantidad = Integer.parseInt(datosTemporales.get(5).toString());
		datosTemporales.set(5, tempCantidad + 1);
		session.setAttribute(productoKey, datosTemporales);
	}
	
	response.sendRedirect("Carrito.jsp");

%>
</body>
</html>