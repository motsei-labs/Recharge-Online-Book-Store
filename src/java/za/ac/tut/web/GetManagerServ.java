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
import za.ac.tut.bl.ManagerFacadeLocal;
import za.ac.tut.entites.Manager;

/**
 *
 * @author USER
 */
public class GetManagerServ extends HttpServlet {
@EJB ManagerFacadeLocal mfl;
 @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
            List<Manager> man = mfl.findAll() ;
            
             request.setAttribute("man",man);
             
             RequestDispatcher disp = request.getRequestDispatcher("getManagerOut.jsp");
             
             disp.forward(request, response);
             
             
             
            
         
    }
}