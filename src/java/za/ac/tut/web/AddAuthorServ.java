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
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import za.ac.tut.bl.AuthorFacadeLocal;
import za.ac.tut.entites.Author;
import za.ac.tut.entites.Books;

/**
 *
 * @author USER
 */
public class AddAuthorServ extends HttpServlet {
@EJB AuthorFacadeLocal afl;
@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
       Long id = Long.parseLong(request.getParameter("id"));
       String firstName = request.getParameter("firstName");
       String lastName = request.getParameter("lastName");
       String email = request.getParameter("email");
       String password = request.getParameter("password");
       String age = request.getParameter("age");
       String address = request.getParameter("address");
       Date creationDate = new Date();
       
       
      
       Integer quantity1 = Integer.parseInt(request.getParameter("firstBookQuan"));
        String title1 = request.getParameter("firstBook");
       Integer quantity2 =Integer.parseInt( request.getParameter("secondBookQuan"));
        String title2 = request.getParameter("secondBook");
       Integer quantity3=Integer.parseInt(request.getParameter("thirdBookQuan"));
        String title3 = request.getParameter("thirdBook");
       List<Books> books = new ArrayList<>();
          Books book1 = new Books();
          book1.setTitle(title1);
          book1.setQuantity(quantity1);
          Books book2 = new Books();
          book2.setQuantity(quantity2);
          book2.setTitle(title2);
          Books book3 = new Books();
          book3.setTitle(title3);
          book3.setQuantity(quantity3);
          books.add(book1);
          books.add(book2);
          books.add(book3);
          
       Author author =  createAuthor(id,firstName , lastName , email , password , age, address,creationDate,books) ;
       afl.create(author);
    
       request.setAttribute("firstName",firstName);
       request.setAttribute("lastName", lastName);
       request.setAttribute("email", email);
       request.setAttribute("password", password);
       request.setAttribute("age", age);
       request.setAttribute("address", address);
       request.setAttribute("author", author);
       request.setAttribute("books", books);
       
       RequestDispatcher dp = request.getRequestDispatcher("addAuthorOut.jsp");
       dp.forward(request, response);
}

    private Author createAuthor(Long id,String firstName, String lastName, String email, String password, String age, String address, Date creationDate, List<Books> books) {
        Author a  = new Author();
        a.setFirstName(firstName);
       a.setAddress(address);
       a.setAge(age);
       a.setLastName(lastName);
       a.setBooks(books);
       a.setId(id);
       a.setEmail(email);
       a.setLastName(lastName);
       a.setPassword(password);
       a.setCreationDate(creationDate);
       
       return a;
    }
}