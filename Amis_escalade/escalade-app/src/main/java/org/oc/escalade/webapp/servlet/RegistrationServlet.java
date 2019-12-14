package org.oc.escalade.webapp.servlet;

import org.oc.escalade.business.RegistrationManager;
import org.oc.escalade.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "RegistrationServlet", urlPatterns = "/register")
public class RegistrationServlet extends HttpServlet {
    public static final String REGISTRATION_VIEW = "/WEB-INF/jsp/registration.jsp";
    public static final String HOME_PAGE = "/home";
    public static final String USER_ATT = "user";
    public static final String FORM_ATT = "form";


    protected void doPost( HttpServletRequest req, HttpServletResponse res ) throws ServletException, IOException {
        RegistrationManager form = new RegistrationManager();
        User user = form.registerUser(req);

        req.setAttribute(FORM_ATT, form);
        req.setAttribute(USER_ATT, user);

        if( form.getErrors().isEmpty() ) {
            req.getSession().setAttribute("user", user);
            //this.getServletContext().getRequestDispatcher( HOME_VIEW ).forward( req, res );
            res.sendRedirect(req.getContextPath() + HOME_PAGE );
        } else {
            this.getServletContext().getRequestDispatcher( REGISTRATION_VIEW ).forward( req, res );
        }
    }

    protected void doGet( HttpServletRequest req, HttpServletResponse res ) throws ServletException, IOException {
    this.getServletContext().getRequestDispatcher( REGISTRATION_VIEW ).forward( req, res );
    }
}
