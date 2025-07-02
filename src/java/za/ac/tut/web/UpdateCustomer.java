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
public class UpdateCustomer extends HttpServlet {
@EJB CustomerFacadeLocal cfl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
        Long id = Long.parseLong(request.getParameter("id"));
        String surname = request.getParameter("lastName");
        String name = request.getParameter("firstName");
        String email = request.getParameter("email");
        String pass = request.getParameter("password");
        String contact = request.getParameter("phoneNumber");
        
        
        Customer cust = create(id,surname,name,email,pass,contact);
        cfl.edit(cust);
        request.setAttribute("cust", cust);
        request.setAttribute( "id", id);
        request.setAttribute("name",name );
        request.setAttribute("surname",surname );
        
        
        RequestDispatcher disp = request.getRequestDispatcher("updateCustOut.jsp");
        disp.forward(request, response);
       }catch(NumberFormatException ex){
         ex.printStackTrace();
         RequestDispatcher disp = request.getRequestDispatcher("error.jsp");
        disp.forward(request, response);
       }
    }

    private Customer create(Long id, String name, String surname, String email, String pass, String contact) {
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


