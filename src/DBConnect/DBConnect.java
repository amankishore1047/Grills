
package DBConnect;
import java.sql.*;

public class DBConnect {
    
    private static final String username = "root";
    private static final String password = "";
    
    static Connection con = null;
    
    public static Connection getConnection() {

        try {
            if(con == null){
                String connectionUrl = "jdbc:mysql://localhost:3306/grill";
                con = DriverManager.getConnection(connectionUrl, username, password);
            System.out.println("Connection successful.");
                }
            
        } catch (SQLException e) {
            System.out.println("SQL Exception: " + e.toString());
        }
        return con;
    }
}
