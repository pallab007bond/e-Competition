
package compack;
import java.sql.*;

public class ConnectionProvider {
    
 static Connection con = null;
 public static Connection getConnection()
 {
  try
  {
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecompdb","root","root");
  }catch(Exception e)
  {
      e.printStackTrace();
  }
  return con;
 }
}
    

