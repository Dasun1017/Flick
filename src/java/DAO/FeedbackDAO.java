package DAO;
import java.sql.*;
import model.Feedback;
import DBconn.DatabaseConnection;
import java.util.ArrayList;
import java.util.List;

public class FeedbackDAO {
    
    // Method to insert feedback into the database
    public boolean insertFeedback(Feedback feedback) {
        Connection conn = null;
        PreparedStatement pst = null;
        
        try {
            conn = DatabaseConnection.getConnection();
            String sql = "INSERT INTO feedback (name, email, mobile, message) VALUES (?, ?, ?, ?)";
            pst = conn.prepareStatement(sql);
            pst.setString(1, feedback.getName());
            pst.setString(2, feedback.getEmail());
            pst.setString(3, feedback.getMobile());
            pst.setString(4, feedback.getMessage());
            
            int result = pst.executeUpdate();
            return result > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (pst != null) pst.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    // Method to retrieve feedback by ID (optional, for later use)
    public Feedback getFeedbackById(int id) {
        Connection conn = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        Feedback feedback = null;
        
        try {
            conn = DatabaseConnection.getConnection();
            String sql = "SELECT * FROM feedback WHERE id = ?";
            pst = conn.prepareStatement(sql);
            pst.setInt(1, id);
            rs = pst.executeQuery();
            
            if (rs.next()) {
                feedback = new Feedback(
                    rs.getInt("id"),
                    rs.getString("name"),
                    rs.getString("email"),
                    rs.getString("mobile"),
                    rs.getString("message")
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (pst != null) pst.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return feedback;
    }

    // Method to retrieve all feedbacks (optional, for admin or display)
    public List<Feedback> getAllFeedbacks() {
        Connection conn = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        List<Feedback> feedbackList = new ArrayList<>();
        
        try {
            conn = DatabaseConnection.getConnection();
            String sql = "SELECT * FROM feedback";
            pst = conn.prepareStatement(sql);
            rs = pst.executeQuery();
            
            while (rs.next()) {
                Feedback feedback = new Feedback(
                    rs.getInt("id"),
                    rs.getString("name"),
                    rs.getString("email"),
                    rs.getString("mobile"),
                    rs.getString("message")
                );
                feedbackList.add(feedback);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (pst != null) pst.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return feedbackList;
    }
}
