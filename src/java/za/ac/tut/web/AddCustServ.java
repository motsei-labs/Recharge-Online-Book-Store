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
import java.util.Date;
import za.ac.tut.bl.CustomerFacadeLocal;
import za.ac.tut.entites.Customer;

/**
 *
 * @author USER
 */
public class AddCustServ extends HttpServlet {
@EJB CustomerFacadeLocal cfl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        String name = request.getParameter("firstName");
        String surname = request.getParameter("lastName");
        String email = request.getParameter("email");
        String contact = request.getParameter("phoneNumber");
        String pass = request.getParameter("password");
        
        Customer cust = create(id,name,surname,email,contact,pass);
        cfl.create(cust);
        request.setAttribute("cust", cust);
         request.setAttribute("id", id);
          request.setAttribute("name", name);
           request.setAttribute("surname", surname);
           
           RequestDispatcher dp = request.getRequestDispatcher("addCustOut.jsp");
           dp.forward(request, response);
    }

    private Customer create(Long id, String name, String surname, String email, String contact, String pass) {
        Customer c = new Customer();
        c.setId(id);
        c.setEmail(email);
        c.setFirstName(name);
        c.setLastName(surname);
        c.setPhoneNumber(contact);
        c.setPassword(pass);
        
        
        return c;
    }


}