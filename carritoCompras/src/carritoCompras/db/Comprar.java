package carritoCompras.db;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Comprar
 */
public class Comprar extends HttpServlet {
	double totalEmail = 0;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Comprar() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		
		String result;
		String puerto = "465";
		
		
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		
		if(session.getAttribute("userID") != null){
			String to = session.getAttribute("userID").toString();	//obtenemos el usuario (correo)
			String from = "reporteCompras01@gmail.com";				//correo de donde vamos a enviar reporte
			
			//Definimos propiedades para enviar correo
			Properties properties = System.getProperties();
			properties.setProperty("mail.smtp.user","reporteCompras01@gmail.com");	//protocolo smtp (usuario)
			properties.setProperty("mail.smtp.host","smtp.gmail.com");				//protocolo, host
            properties.put("mail.smtp.starttls.enable", "true");//inicializar el servidor
            properties.put("mail.smtp.auth", "true");//autentificacion
			properties.setProperty("mail.smtp.socketFactory.port", puerto );//activar el puerto
			properties.setProperty("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");	//protocolo https
			properties.setProperty("mail.smtp.socketFactory.fallback", "false");					
		
			

			   try{
				   Authenticator auth = new autentificadorSMTP();//autentificar el correo mediante su clase
		           Session mailSession = Session.getInstance(properties, auth);//se inica una session
			      // Create a default MimeMessage object.
			      MimeMessage message = new MimeMessage(mailSession);
			      // Set From: header field of the header.
			      message.setFrom(new InternetAddress(from));
			      // Set To: header field of the header.
			      message.addRecipient(Message.RecipientType.TO,
			                               new InternetAddress(to));
			      // Set Subject: header field
			      message.setSubject("Reporte de Compras Wolfshop");
			      
			      // Now set the actual message
			      String datosTabla = obtenerDatos(session).toString(); 
			      message.setText("Buen dia su total de compras es: "+ totalEmail + datosTabla);
			  
			      // Send message
			      Transport.send(message);
			      vaciarCarrito(session);
			      result = "Se ha enviado el reporte de compra a " + session.getAttribute("userID");
			   }catch (MessagingException mex) {
			      mex.printStackTrace();
			      result = "No se pudo enviar el mensaje<br>";
			   }
			   response.sendRedirect("resultadoEmail.jsp?resultado=" + result);
			   //out.println("<br><a href=\"index.jsp\">Regresar</a>");
					
		}
		else{
			String error = "No tienes cuenta inicia sesion para comprar<br>";
			out.println("<a href=\"iniciarSesion.html\">Iniciar Session</a> ");
			out.println("<a href=\"registro.jsp\">Registrarse</a>");
			response.sendRedirect("resultadoEmail.jsp?resultado=" + error);
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
    private class autentificadorSMTP extends javax.mail.Authenticator {

        @Override
        public PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication("reporteCompras01@gmail.com", "marin123");//autentifica tanto el correo como la contraseña
        }
    }
    
    public ArrayList<ArrayList> obtenerDatos(HttpSession session){
    	String user = session.getAttribute("userID").toString();
		session.removeAttribute("userID");
		String productos[]= session.getValueNames();
    	ArrayList<ArrayList> datosCompras = new ArrayList<>();
    	ArrayList  obtenerHash= new ArrayList();
    
    	for(int i = 0; i < productos.length; i++){
    		obtenerHash =(ArrayList)session.getAttribute(productos[i]);
    		datosCompras.add(i, obtenerHash);			//obtiene los datos de la key para introducirlos en el arraylist-arrayList
    		totalEmail += Double.parseDouble(obtenerHash.get(1).toString()) * Integer.parseInt(obtenerHash.get(5).toString());
    	}
    	
    	session.setAttribute("userID", user);
    	return datosCompras;
    }
    
    public void vaciarCarrito(HttpSession session){
    	String user = session.getAttribute("userID").toString();
		session.removeAttribute("userID");
		String productos[]= session.getValueNames();	//Obtiene los valores de la key
    	
    
    	for(int i = 0; i < productos.length; i++){
    		session.removeAttribute(productos[i]);		//recorriendo y los remueve
    	}
    	
    	session.setAttribute("userID", user);	//Recupera el userID
    
    }
}
