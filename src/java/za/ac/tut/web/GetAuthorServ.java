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
import za.ac.tut.bl.AuthorFacadeLocal;
import za.ac.tut.entites.Author;

/**
 *
 * @author USER
 */
public class GetAuthorServ extends HttpServlet {
@EJB AuthorFacadeLocal afl;
@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      List<Author> authors = afl.findAll();
      
      request.setAttribute("authors", authors);
      
      RequestDispatcher disp = request.getRequestDispatcher("getAuthorOut.jsp");
      disp.forward(request, response);
      
    }
}