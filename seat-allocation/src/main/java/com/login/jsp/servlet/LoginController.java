package com.login.jsp.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;



@WebServlet("/LoginController")
public class LoginController extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
		
		
		
		
		PrintWriter out = response.getWriter();
		String un = request.getParameter("uname");
        String pw = request.getParameter("password");

// Connect to mysql(mariadb) and verify username password

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
// loads driver
            Connection c = DriverManager.getConnection( "jdbc:mysql://localhost:3306/manthan", "root", "Manthan9057"); // gets a new connection

            PreparedStatement ps = c.prepareStatement("select * from login where uname= ? and password=? ");
     
              ps.setString(1, un);
              ps.setString(2, pw);

            ResultSet rs = ps.executeQuery();
            response.setHeader("Cache-Control", "no-cache,no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache,must-revalidate");
            // response.setHeader("Expire","1");
            
            
            if (rs.next()) {
            	
                RequestDispatcher rd = request.getRequestDispatcher("Nav.html");
                rd.forward(request, response);
                
               
            }
            else {
           // RequestDispatcher rd = request.getRequestDispatcher("error.html");
           // rd.forward(request, response);
            	out.print("<h1>please try againr</h1>");
            	//response.sendRedirect();
        }
           
        }
            catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    

	}
}