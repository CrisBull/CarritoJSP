<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Nuevo Usuario</title>
</head>
<body>
	<center><h1>Nuevo Usuario</h1></center>
	<form method="POST" action='loggin.jsp' name="iniciar sesion">
		<center>Nombre de Usuario<input type="text" name="user"/> <br>
		<br>
		Contraseña<input type="password" name="password" />
		<br>
		Confirmar Contraseña<input type="password" name="rpassword" />
		<br>
		<br>
		<input type="submit"  value="Enviar"/>&nbsp;
		
			</form>
	<form method="post" action="index.html" name="cancelar">
		<input type="submit" name="index.html" value="Cancelar"/>
		<br>
	</form>

</body>
</html>