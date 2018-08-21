

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Form.ConnectionClass;

/**
 * Servlet implementation class register1
 */
@WebServlet("/rah")
public class register1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public register1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=request.getParameter("a");
		String uid=request.getParameter("b");
		String vid=request.getParameter("c");
		String email=request.getParameter("d");
		String address=request.getParameter("e");
		String dob=request.getParameter("f");
		String contact=request.getParameter("g");
		String password=request.getParameter("h");
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		HttpSession session=request.getSession();
		String cvid=(String)session.getAttribute("vname");
		
		if (vid==cvid) 
		{
			out.println("<h1>This Voter id already registered</h1>");
			RequestDispatcher rd=request.getRequestDispatcher("registration.jsp");
			rd.include(request, response);
		}
		else{
			Connection c=null;
			try {
				  c=ConnectionClass.conTest();
					//create the statement
					PreparedStatement pst=c.prepareStatement("insert into VOTERS values(?,?,?,?,?,?,?,?)");
					pst.setString(1, name);
					pst.setString(2, uid);
					pst.setString(3, vid);
					pst.setString(4, email);
					pst.setString(5, address);
					pst.setString(6, dob);
					pst.setString(7, contact);
					pst.setString(8, password);
					
					//execute a query
					int i=pst.executeUpdate();
					if(i>0)
					{   out.print("<h1>Successfully Registered</h1>");
						RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
						rd.include(request, response);
						
					}
			
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		finally{
			try{
				c.close();
				}
			catch(SQLException e) {
					e.printStackTrace();
				}
				}
	}

}}
	



