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
import java.util.List;
import za.ac.tut.bl.CustomerFacadeLocal;
import za.ac.tut.entites.Customer;

/**
 *
 * @author USER
 */
public class GetCustomersServ extends HttpServlet {

  @EJB CustomerFacadeLocal cfl;

@Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          List<Customer> customers = cfl.findAll();
          
          request.setAttribute("customers",customers);
          
          RequestDispatcher disp = request.getRequestDispatcher("getCustout.jsp");
          disp.forward(request, response);
}
}