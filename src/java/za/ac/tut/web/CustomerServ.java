/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import jakarta.ejb.EJB;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import za.ac.tut.bl.CustomerFacadeLocal;
import za.ac.tut.entites.Customer;

/**
 *
 * @author USER
 */
public class CustomerServ extends HttpServlet {
@EJB CustomerFacadeLocal cfl;

@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String idStr = request.getParameter("id");

        if (name == null || idStr == null || idStr.trim().isEmpty()) {
            request.setAttribute("error", "Missing login details.");
            request.getRequestDispatcher("loginCust.jsp").forward(request, response);
            return;
        }

        try {
            Long id = Long.parseLong(idStr);
            Customer cust = cfl.findCustomer(name, id);

            if (cust != null) {
                HttpSession session = request.getSession(true);
                session.setAttribute("cust", cust);  // store in session
                request.getRequestDispatcher("custDashboard.jsp").forward(request, response);
            } else {
                request.setAttribute("error", "Invalid student credentials.");
                request.getRequestDispatcher("loginCust.jsp").forward(request, response);
            }
        } catch (NumberFormatException e) {
            request.setAttribute("error", "ID must be numeric.");
            request.getRequestDispatcher("loginCust.jsp").forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("loginCust.jsp");
    }
}
