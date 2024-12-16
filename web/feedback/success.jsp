<%@ page import="java.sql.*" %>
<%@ page import="DBconn.DatabaseConnection" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<%
    // Retrieve form data
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String mobile = request.getParameter("mobile");
    String message = request.getParameter("message");

    String feedbackStatus = "";

    try (Connection conn = DatabaseConnection.getConnection()) {
        // Insert feedback into the database
        String sql = "INSERT INTO Feedback (Name, Email, Mobile, Message) VALUES (?, ?, ?, ?)";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setString(1, name);
        stmt.setString(2, email);
        stmt.setString(3, mobile);
        stmt.setString(4, message);

        int rows = stmt.executeUpdate();

        if (rows > 0) {
            feedbackStatus = "Your feedback has been submitted successfully. Thank you!";
        } else {
            feedbackStatus = "Failed to submit your feedback. Please try again.";
        }
    } catch (Exception e) {
        feedbackStatus = "An error occurred: " + e.getMessage();
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback Submission Status</title>
    <link rel="stylesheet" type="text/css" href="../css/feedback-styles.css">
</head>
<body>
    <div class="success-container">
        <div class="modal-content">
            <h2>Feedback Submission Status</h2>
            <p><%= feedbackStatus %></p>
            <a href="../home.jsp" class="return-btn">Go Back to home</a>
        </div>
    </div>
</body>
</html>
