package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conecta {

	/*
	 * public static Connection getConnection() throws SQLException {
	 * 
	 * try {
	 * 
	 * Class.forName("com.mysql.jdbc.Driver"); return
	 * DriverManager.getConnection("jdbc:mysql://localhost/base_dados", "root", "");
	 * 
	 * 
	 * } catch (ClassNotFoundException e) {
	 * 
	 * throw new SQLException(e.getException()); }
	 * 
	 * }
	 */
	
	public final String URL="jdbc:mysql://localhost:3306/atrativos";
	public final String USER="root";
	public final String SENHA="";
	public Connection conn;
	
	public Conecta() throws Exception{
		Class.forName("com.mysql.jdbc.Driver");
	}
	
	public void conectar() throws Exception{
		conn = DriverManager.getConnection(URL, USER, SENHA);
	}
	
	public void desconectar() throws Exception{
		conn.close();
	}
}
