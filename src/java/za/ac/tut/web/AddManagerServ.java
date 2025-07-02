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
import za.ac.tut.bl.ManagerFacadeLocal;
import za.ac.tut.entites.Manager;

/**
 *
 * @author USER
 */
public class AddManagerServ extends HttpServlet {
@EJB ManagerFacadeLocal mfl;
@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
           String name = request.getParameter("firstName");
           String surname = request.getParameter("surname");
           String gender = request.getParameter("gender");
           String age = request.getParameter("age");
           Double salary = Double.parseDouble(request.getParameter("salary"));
           String phoneNumber= request.getParameter("phoneNumber");
           String password = request.getParameter("password");
           String address = request.getParameter("address");
           String confirmPassword = request.getParameter("confirmPassword");
           Date creationDate = new Date();
           
           Manager manager = createLibrarian(name,surname,gender,age,salary,creationDate,address,phoneNumber,password,confirmPassword);
          
           mfl.create(manager);
         
           
           request.setAttribute("manager", manager);
           request.setAttribute("name", name);
           request.setAttribute("surname", surname);
           request.setAttribute("salary", salary);
           request.setAttribute("phoneNumber", phoneNumber);
           
           
           RequestDispatcher disp = request.getRequestDispatcher("addManagerOut.jsp");
           disp.forward(request, response);
    }

    private Manager createLibrarian(String name, String surname, String gender, String age, Double salary, Date creationDate, String address, String phoneNumber, String password, String confirmPassword) {
        Manager m = new Manager();
        m.setAddress(address);
        m.setAge(age);
        m.setConfirmPassword(confirmPassword);
        m.setFirstName(name);
        m.setSurname(surname);
        m.setGender(gender);
        m.setSalary(salary);
        m.setPassword(password);
        m.setPhoneNumber(phoneNumber);
        m.setCreationDate(creationDate);
        
        return m;
    }

}