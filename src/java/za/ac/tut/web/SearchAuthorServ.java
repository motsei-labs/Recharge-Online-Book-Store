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
import za.ac.tut.bl.AuthorFacadeLocal;
import za.ac.tut.entites.Author;

/**
 *
 * @author USER
 */
public class SearchAuthorServ extends HttpServlet {
    @EJB AuthorFacadeLocal afl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
             Long id = Long.parseLong(request.getParameter("id"));
             
              Author author  = afl.find(id);
              
              request.setAttribute("author", author);
              
              RequestDispatcher disp = request.getRequestDispatcher("searchAuthorOut.jsp");
              
              disp.forward(request, response);
    }

}