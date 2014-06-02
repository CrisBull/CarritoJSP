package carritoCompras.db;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
//import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
//import java.util.Map;


//import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.swing.JOptionPane;


// Extend HttpServlet class
public class Insertar extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	
private String message;
// JDBC driver name and database URL
static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
static final String DB_URL = "jdbc:mysql://localhost:3306/compras";

// Database credentials
static final String USER = "root";
static final String PASS = "root";

public void init() throws ServletException
{
// Do required initialization
message = "Estableciendo Conexión al Servidor";
}

public void doPost(HttpServletRequest request,
HttpServletResponse response)
throws ServletException, IOException
{
response.setContentType("text/html");
PrintWriter out = response.getWriter();
out.println("<h1>" + message + "</h1>");
Connection conn = null;
Statement stmt = null;
//out.println("<h1> entrando al try con: " + DB_URL +" </h1>");
try{
	
//STEP 2: Registrar el driver JDBC
Class.forName("com.mysql.jdbc.Driver").newInstance();

//STEP 3: Abrir la conexión
out.println("<h1> Conexion Exitosa!!! </h1>");
conn = DriverManager.getConnection(DB_URL,USER,PASS);

//STEP 4: Ejecutando un query sql
//System.out.println("Creando la sentencia...");
stmt = conn.createStatement();
String nombre = request.getParameter("user");
String contraseña = request.getParameter("password");
String rcontraseña = request.getParameter("rpassword");
String sql;

if(contraseña.equals(rcontraseña)){
	
	out.println("Usuario Registrado Felicidades" + " " +nombre);
	out.println("<form method=\"POST\" action='index.jsp' name=\"con\"><input type=\"submit\"  value=\"Continuar\"/>&nbsp;</form>");
	sql = ("insert into users (usuario,pass) values('"+nombre+"','"+contraseña+"')");
	//ResultSet rs = stmt.executeQuery(sql);
	stmt.executeUpdate(sql);
	
}else
		response.sendRedirect("index.jsp");

//out.println("<form method=\"POST\" action='Controller' name=\"Consultar\"><input type=\"submit\" value=\"Regresar\"></form>");
//STEP 6: limpiando el entorno
//rs.close();
stmt.close();
conn.close();
}catch(SQLException se){
//Controlando los errores for JDBC
out.println("Error de SQL!");
out.println(se);
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
}
public void destroy()
{
// do nothing.
}


}
