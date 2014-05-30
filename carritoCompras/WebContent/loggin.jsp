<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% out.println("Hola desde Java");
	final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	final String DB_URL = "jdbc:mysql://localhost:3306/compras";

	//Database credentials
	final String USER = "root";
	final String PASS = "root";
	//String localUser = request.getParameter("user");
	//String localPass = request.getParameter("pass");
	
	Connection conn = null;
	Statement stmt = null;
	
	try{
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		conn = DriverManager.getConnection(DB_URL,USER,PASS);
		//STEP 4: Ejecutando un query sql
		//System.out.println("Creando la sentencia...");
		stmt = conn.createStatement();
		String sql;
		sql = "SELECT * from users where usuario='admin'";
		ResultSet rs = stmt.executeQuery(sql);
		
		while(rs.next()){
			String usuario = rs.getString("usuario");
			String pass = rs.getString("pass");
		
			out.println(usuario + pass);
		}
		
		//STEP 6: limpiando el entorno
		rs.close();
		stmt.close();
		conn.close();	
	}catch(SQLException se){
		//Controlando los errores for JDBC
		out.println("Error de SQL!\n" + se);
		se.printStackTrace();
		//out.print(se.getErrorCode());
		
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