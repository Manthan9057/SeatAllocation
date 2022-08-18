package com.seatAllocation.Authentication.controller;
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
/**
 * Servlet implementation class getSeatCount
 */
@WebServlet("/Viewseat23")
public class Viewseat23 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Viewseat23() {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
		try {
			PrintWriter out = response.getWriter();
			String Floor = request.getParameter("Floor");
			
			  
			int floor_no = Integer.parseInt(Floor);
			
			
//			request.setAttribute("floor", floor_no);
//			request.setAttribute("floorNo", Floor);
			
			
		/*	ServletContext context = getServletContext(); // method inherit from HttpServlet
			String CapacityOf1stFloor = context.getInitParameter("Capacity-of-Floor-1");
			String CapacityOf2ndFloor = context.getInitParameter("Capacity-of-Floor-2");
			String CapacityOf3rdFloor = context.getInitParameter("Capacity-of-Floor-3");
			String CapacityOf4thFloor = context.getInitParameter("Capacity-of-Floor-4");
			String CapacityOf5thFloor = context.getInitParameter("Capacity-of-Floor-5");
			
			
			System.out.println(CapacityOf1stFloor);
			System.out.println(CapacityOf2ndFloor);
			System.out.println(CapacityOf3rdFloor);
			System.out.println(CapacityOf4thFloor);
			System.out.println(CapacityOf5thFloor);
			
			
			
			int floor1Capacity = Integer.parseInt(CapacityOf1stFloor);
			int floor2Capacity = Integer.parseInt(CapacityOf2ndFloor);
			int floor3Capacity = Integer.parseInt(CapacityOf3rdFloor);
			int floor4Capacity = Integer.parseInt(CapacityOf4thFloor);
			int floor5Capacity = Integer.parseInt(CapacityOf5thFloor);
			
			System.out.println(CapacityOf1stFloor);
			System.out.println(CapacityOf2ndFloor);
			System.out.println(CapacityOf3rdFloor);
			System.out.println(CapacityOf4thFloor);
			System.out.println(CapacityOf5thFloor);   */
	
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/search", "root", "Manthan9057");
			System.out.print("Connection established...");
			PreparedStatement preparedStatement = connection.prepareStatement("SELECT COUNT(*) from employee25 where floor=? ;");
			System.out.print("query running successfully");
			preparedStatement.setInt(1, floor_no );
			ResultSet resultSet = preparedStatement.executeQuery();
			System.out.println(resultSet);
			if(floor_no == 1) {
				System.out.print("In 1st floor");
				if(resultSet.next()) {
					String count = resultSet.getString("COUNT(*)");
					int allocated = Integer.parseInt(count);
					int AvailableInt = 60 - allocated;
					String available = String.valueOf(AvailableInt);
					// System.out.println(count);
					request.setAttribute("Allocated", count);
					request.setAttribute("Available", available);
					RequestDispatcher requestDispatcher = request.getRequestDispatcher("View.jsp");
					requestDispatcher.forward(request, response);
				}
			}
			else if(floor_no == 2) {
				if(resultSet.next()) {
					String count = resultSet.getString("COUNT(*)");
					int allocated = Integer.parseInt(count);
					int AvailableInt = 88 - allocated;
					String available = String.valueOf(AvailableInt);
					// System.out.println(count);
					request.setAttribute("Allocated", count);
					request.setAttribute("Available", available);
					RequestDispatcher requestDispatcher = request.getRequestDispatcher("View.jsp");
					requestDispatcher.forward(request, response);
				}
			}
			
			else if(floor_no == 3) {
				if(resultSet.next()) {
					String count = resultSet.getString("COUNT(*)");
					int allocated = Integer.parseInt(count);
					int AvailableInt = 88 - allocated;
					String available = String.valueOf(AvailableInt);
					// System.out.println(count);
					request.setAttribute("Allocated", count);
					request.setAttribute("Available", available);
					RequestDispatcher requestDispatcher = request.getRequestDispatcher("View.jsp");	
					requestDispatcher.forward(request, response);
				}
			}
			
			else if(floor_no == 4) {
				if(resultSet.next()) {
					String count = resultSet.getString("COUNT(*)");
					int allocated = Integer.parseInt(count);
					int AvailableInt = 88 - allocated;
					String available = String.valueOf(AvailableInt);
					// System.out.println(count);
					request.setAttribute("Allocated", count);
					request.setAttribute("Available", available);
					RequestDispatcher requestDispatcher = request.getRequestDispatcher("View.jsp");	
					requestDispatcher.forward(request, response);
				}
			}
			
			else if(floor_no == 5) {
				if(resultSet.next()) {
					String count = resultSet.getString("COUNT(*)");
					int allocated = Integer.parseInt(count);
					int AvailableInt = 70 - allocated;
					String available = String.valueOf(AvailableInt);
					// System.out.println(count);
					request.setAttribute("Allocated", count);
					request.setAttribute("Available", available);
					RequestDispatcher requestDispatcher = request.getRequestDispatcher("View.jsp");	
					requestDispatcher.forward(request, response);
				}
			}
			
			else {
				out.println("<font-color=red size=18>Credantials Not Matched");
				out.println("<a href=/Seat-Allocation/login.jsp>Try Again!!</a>");
			}
		
		}catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}









