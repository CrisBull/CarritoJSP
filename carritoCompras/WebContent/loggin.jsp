<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	out.println("Bienvenido de nuevo");
	final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	final String DB_URL = "jdbc:mysql://localhost:3306/compras";

	//Database credentials
	final String USER = "root";
	final String PASS = "root";
	
	String userLocal = request.getParameter("User");
	String passLocal = request.getParameter("password");
	
	Connection conn = null;
	Statement stmt = null;
	
	try{
		//STEP 2: Registrar el driver JDBC
		Class.forName("com.mysql.jdbc.Driver").newInstance();

		//STEP 3: Abrir la conexión
		out.println("<h2> Conectando a la base de datos </h2>");
		out.println("<br> Entradas <br>" + userLocal + " " + passLocal);
		conn = DriverManager.getConnection(DB_URL,USER,PASS);

		//STEP 4: Ejecutando un query sql
		//System.out.println("Creando la sentencia...");
		stmt = conn.createStatement();
		String sql;
		sql = "SELECT * from users where usuario='" + userLocal + "' and pass='" + passLocal + "'";
		ResultSet rs = stmt.executeQuery(sql);
		if(rs.wasNull()){
			
			//out.println("Entra a null");
		//STEP 5: extraer los datos del result set
		while(rs.next()){
		//buscando por nombre del campo
		//int id = rs.getInt("id");
			out.println("Entra a while");
			String user = rs.getString("usuario");
			String password = rs.getString("pass");
		}
		}
		else {
			///response.sendRedirect("index.html");
			out.println("algo pasa aqui");
		}
		//STEP 6: limpiando el entorno
		rs.close();
		stmt.close();
		conn.close();
		}catch(SQLException se){
		//Controlando los errores for JDBC
		out.println("Error de SQL!");
		se.printStackTrace();
		}catch(Exception ie2){
		out.println("Error de otra madre!");
		ie2.printStackTrace();
		}finally{
		//por si no se cerraron correctamente
		try{
		if(stmt!=null)
		stmt.close();
		}catch(SQLException se2){
		}// nothing we can do
		try{
		if(conn!=null)
		conn.close();
		}catch(SQLException se){
		se.printStackTrace();
		}//end finally try
		} //end try


%>
</body>
</html>