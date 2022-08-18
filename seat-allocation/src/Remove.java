package com.login.jsp.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;



@WebServlet("/Remove")
public class Remove extends HttpServlet {

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
	    String  st = request.getParameter("seat");
        
        System.out.println(id);
        System.out.println(st);
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection c = DriverManager.getConnection( "jdbc:mysql://localhost:3306/Register", "root", "Manthan9057"); // gets a new connection
System.out.println("connection stablish");
            PreparedStatement ps = c.prepareStatement("DELETE * FROM Register.user WHERE id = ? and seat = ?");
     
              ps.setInt(1, id1);
              ps.setString(2, st);
              
              int i = ps.executeUpdate();

            if (i>0) {
                out.print("your seat successfully remove");
               }
            
            
        }
            catch (Exception e2) {
            System.out.println(e2);
            out.close();
            }
    
	}
	}
