package controller;
import DAO.FeedbackDAO;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import model.Feedback;

public class FeedbackServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String mobile = request.getParameter("mobile");
        String message = request.getParameter("message");

        // Create a Feedback object
        Feedback feedback = new Feedback();
        feedback.setName(name);
        feedback.setEmail(email);
        feedback.setMobile(mobile);
        feedback.setMessage(message);

        // Instantiate FeedbackDAO to handle database interaction
        FeedbackDAO feedbackDAO = new FeedbackDAO();
        
        // Insert feedback into database
        boolean isSuccess = feedbackDAO.insertFeedback(feedback);
        
        if (isSuccess) {
            response.sendRedirect("feedback/success.jsp");
        } else {
            response.sendRedirect("feedback/error.jsp");
        }
    }
}
