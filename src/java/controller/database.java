package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class database {

    public static Connection getConnection() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/movie_booking", "root", "Dasun1017");
        } catch (Exception e) {
            throw new SQLException("Database connection error", e);
        }
    }
}   
