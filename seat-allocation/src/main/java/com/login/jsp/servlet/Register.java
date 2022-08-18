package com.login.jsp.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;



@WebServlet("/Register")
public class Register extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
		
		PrintWriter out = response.getWriter();
		String id = request.getParameter("id");
		int id1 = Integer.parseInt(id);
		String un = request.getParameter("username");
        
        String em = request.getParameter("email");
        String pro = request.getParameter("project");
        String ma = request.getParameter("manager");
        String co = request.getParameter("contact");
        String fl = request.getParameter("Floor");
        String  st = request.getParameter("seat");
        
        System.out.println(id);
        System.out.println(un);
        System.out.println(em);
        System.out.println(pro);
        System.out.println(ma);
        System.out.println(co);
        System.out.println(st);
        System.out.println(fl);
        
        
        
        
        
        
        
        

// Connect to mysql(mariadb) and verify username password

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
// loads driver
            Connection c = DriverManager.getConnection( "jdbc:mysql://localhost:3306/search", "root", "Manthan9057"); // gets a new connection
System.out.println("connection stablish");
            PreparedStatement ps = c.prepareStatement("insert into employee25 values(?,?,?,?,?,?,?,?)");
     
              ps.setInt(1, id1);
              ps.setString(2, un);
              ps.setString(3, em);
              ps.setString(4, pro);
              ps.setString(5, ma);
              ps.setString(6, co);
              ps.setString(7, fl);
              ps.setString(8, st);
              
              int i = ps.executeUpdate();

            if (i>0) {
               // out.print("you are successful registe.");
            	
                RequestDispatcher rd = request.getRequestDispatcher("seat.jsp");
                rd.forward(request, response);
               }
            
            
        }
            catch (Exception e2) {
            out.print(e2);
            out.close();
            }
    
	}
	}
