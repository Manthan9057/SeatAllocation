import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Viewseat extends HttpServlet
{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doGet (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        response.setContentType ("text/html");
        PrintWriter out = response.getWriter ();
        String Floor = request.getParameter("Floor");
        
        

        try
        {
            Class.forName ("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection ("jdbc:mysql://localhost:3306/Allocation", "root", "Manthan9057");
            PreparedStatement ps =
         con.prepareStatement ("select * from allocate where Floor=?");
            con.prepareStatement("SELECT * FROM employee25 ORDER BY seat");
            ps.setString (1, Floor);
            
            out.print ("<table width=50% border=1>");
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

            /* Printing result */
            while (rs.next ())
         {
             out.print ("<tr><td>" + rs.getInt(1) + "</td><td>" +  rs.getString (2) + " </td><td>" + rs.getString (3) + "</td><td>" + rs.getString(4) + "</td><td>" + rs.getString(5) + "</td><td>" + rs.getString(6) + "</td><td>" + rs.getString(7) + "</td></tr>");
         
         
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
