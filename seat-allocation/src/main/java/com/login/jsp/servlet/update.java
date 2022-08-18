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



 @WebServlet("/update")
public class update extends HttpServlet {

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
        String fl = request.getParameter("floor");
	    
        System.out.println(id);
        System.out.println(st);
        System.out.println(fl);
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection c = DriverManager.getConnection( "jdbc:mysql://localhost:3306/search", "root", "Manthan9057"); // gets a new connection
System.out.println("connection stablish");
            PreparedStatement ps = c.prepareStatement("  UPDATE employee25 SET seat = ?,floor = ? WHERE id = ?;");
     System.out.println("query run");
              ps.setString(1, st);
              ps.setString(2, fl);
              ps.setInt(3, id1);
              int i = ps.executeUpdate();

            if (i>0) {
                out.print("update sucessful");
               }
            
            
        }
            catch (Exception e2) {
            out.print(e2);
            out.close();
            }
    
	}
	}
