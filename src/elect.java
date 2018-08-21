

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class elect
 */
@WebServlet("/q")
public class elect extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public elect() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		String vidi=request.getParameter("c");
		String party=request.getParameter("s1");
		Connection con=null;
		//Create one session
		HttpSession session=request.getSession();
		String cvid=(String)session.getAttribute("vname");
		if(!vidi.equals(cvid))
		{
			out.println("<h2>Invalid VoterID!!! </h2>");
			RequestDispatcher rd=request.getRequestDispatcher("welcome.jsp");
		rd.include(request, response);
		
		}
		
		else {
			
		
		try {
				//registering the driver class
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//connection with database
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe" , "OVS", "ritika96");
			
			PreparedStatement pst=con.prepareStatement("insert into RESULT values(?,?)");
			pst.setString(1, vidi);
			pst.setString(2, party);
			//execute a query
			int i=pst.executeUpdate();
			if(i>0)
			{
				
				response.sendRedirect("successful.jsp");
			}
			else {
				out.print("<h1>You Have Already Votted!<h1>");
				RequestDispatcher rd1=request.getRequestDispatcher("welcome.jsp");
		        rd1.include(request, response);
			}
			
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		finally{
			try{
				con.close();
				}
			catch(SQLException e) {
					e.printStackTrace();}}}}}
				
