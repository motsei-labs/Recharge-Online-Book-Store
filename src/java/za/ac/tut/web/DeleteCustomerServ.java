/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import jakarta.ejb.EJB;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import za.ac.tut.bl.CustomerFacadeLocal;
import za.ac.tut.entites.Customer;

/**
 *
 * @author USER
 */
public class DeleteCustomerServ extends HttpServlet {
@EJB CustomerFacadeLocal cfl;
protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

    try {
        Long id = Long.parseLong(request.getParameter("id"));
        Customer c = cfl.find(id);

        if (c != null) {
            cfl.remove(c);
            request.setAttribute("message", "Student deleted successfully.");
        } else {
            request.setAttribute("error", "Student with ID " + id + " not found.");
        }

    } catch (NumberFormatException e) {
        request.setAttribute("error", "Invalid student ID format.");
    } catch (Exception e) {
        request.setAttribute("error", "An unexpected error occurred: " + e.getMessage());
    }

    RequestDispatcher disp = request.getRequestDispatcher("deleteCustOut.jsp");
    disp.forward(request, response);
}
}