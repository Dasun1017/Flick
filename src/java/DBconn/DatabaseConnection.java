package DBconn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    private static final String URL = "jdbc:mysql://localhost:3306/movie_booking";
    private static final String USER = "root"; // Replace with your MySQL username
    private static final String PASSWORD = "Dasun1017"; // Replace with your MySQL password

    public static Connection getConnection() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(
                    URL,USER,PASSWORD);
        } catch (Exception e) {
            throw new SQLException("Database connection error", e);
        }
        
    }
}
          
//package DBconn;
//
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.SQLException;
//
//public class DatabaseConnection {
//     // Database URL, Username, and Password
//    private static final String URL = "jdbc:mysql://localhost:3306/movie_booking";
//    private static final String USER = "root"; // Replace with your MySQL username
//    private static final String PASSWORD = "Dilshan2003"; // Replace with your MySQL password
//
//    // Method to establish and return a database connection
//    public static Connection getConn() {
//        Connection connection = null;
//        try {
//            // Load MySQL JDBC Driver (optional for some setups)
//            Class.forName("com.mysql.cj.jdbc.Driver");
//
//            // Establish connection
//            connection = DriverManager.getConnection(URL, USER, PASSWORD);
//        } catch (ClassNotFoundException e) {
//            System.out.println("MySQL Driver not found. Please add the JDBC library to the project.");
//        } catch (SQLException e) {
//            System.out.println("Connection failed! Check output console.");
//        }
//        return connection;
//    }
//
//    // Method to close the connection (optional, good practice)
//    public static void closeConnection(Connection connection) {
//        try {
//            if (connection != null && !connection.isClosed()) {
//                connection.close();
//            }
//        } catch (SQLException e) {
//        }
//    }
//
//    public static Connection getConnection() {
//        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
//    }
//}

   
