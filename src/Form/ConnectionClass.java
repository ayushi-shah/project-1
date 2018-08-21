package Form;
import java.sql.Connection;
import java .sql.DriverManager;

public class ConnectionClass {
	public static Connection conTest()
	{
		Connection con= null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe" , "OVS", "ritika96");
		}catch(Exception e) {System.out.println(e);}
	return con;}

}
