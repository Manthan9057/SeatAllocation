import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;



@WebServlet("/Search1")
public class Search1 extends HttpServlet
{
    
	private static final long serialVersionUID = 1L;
    
	public void doGet (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        response.setContentType ("text/html");
        PrintWriter out = response.getWriter ();
        String seat = request.getParameter("seat");
        System.out.println("seat");
        try
        {
            Class.forName ("com.mysql.cj.jdbc.Driver");
            System.out.println("establish");
            Connection con = DriverManager.getConnection ("jdbc:mysql://localhost:3306/search", "root", "Manthan9057");
            PreparedStatement ps =
         con.prepareStatement ("select * from employee25 where seat = ? ");
            System.out.println("connection");
            ps.setString (1, seat);
            
            out.print ("<table width=100% border=6>");
            out.print ("<caption>Employee Details:</caption>");

            ResultSet rs = ps.executeQuery ();

            /* Printing column names */
            out.print ("</br></br>");
            ResultSetMetaData rsmd = rs.getMetaData ();
            int total = rsmd.getColumnCount ();

            out.print ("<tr>");
            for (int i = 1; i <= total; i++)
         {
             out.print ("<th>" + rsmd.getColumnName (i) + "</th>");
         }
            out.print ("</tr>");

            
            while (rs.next ())
         {
             out.print ("<tr><td>" + rs.getString (1) + "<td>" +  rs.getString (2) + "<td>" + rs.getString (3) + "<td>" + rs.getString (4) + "<td>" + rs.getString (5) + "<td>" + rs.getString (6) + "<td>" + rs.getString (7) + "<td>" + rs.getString (8) +  "</td></tr>");
         }
            out.print ("</table>");
        }
        catch (Exception e2)
        {
            e2.printStackTrace ();
        }
        finally
        {
            out.close ();
        }
    }
}