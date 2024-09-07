package com.web.controller.web;

import com.web.model.UserModel;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.Serial;
@WebServlet(urlPatterns = {"/home"})
public class HomeController extends HttpServlet {
    @Serial
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("views/web/home.jsp");
        rd.forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UserModel user = new UserModel();
        String action = request.getParameter("action");
        user.setEmail(request.getParameter("email"));
        user.setFirstName(request.getParameter("firstName"));
        user.setLastName(request.getParameter("lastName"));
        user.setDob(request.getParameter("dob"));

        String source = request.getParameter("source");
        boolean receiveAnnouncements = request.getParameter("receive_announcements") != null;
        boolean emailAnnouncements = request.getParameter("email_announcements") != null;
        String contactMethod = request.getParameter("contact_method");
        if ("add".equals(action)) {
            request.setAttribute("user", user);
            request.setAttribute("source", source);
            request.setAttribute("receiveAnnouncements", receiveAnnouncements);
            request.setAttribute("emailAnnouncements", emailAnnouncements);
            request.setAttribute("contactMethod", contactMethod);
            RequestDispatcher rd = request.getRequestDispatcher("views/web/thanks.jsp");
            rd.forward(request, response);
        } else {
            response.sendRedirect("views/web/home.jsp");
        }
    }
}
