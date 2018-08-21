

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Form.ConnectionClass;

/**
 * Servlet implementation class login
 */
@WebServlet("/l1")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String vid=request.getParameter("c");
		String password=request.getParameter("h");
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		//Create one session
		HttpSession s=request.getSession();
		s.setAttribute("vname", vid);
		try {
			Connection c=ConnectionClass.conTest();
			Statement st=c.createStatement();
	        ResultSet rs1= st.executeQuery("select voter_id from RESULT where voter_id = '"+vid+"'");
		        if(rs1.next()){
		                     response.sendRedirect("already_voted.jsp?name="+vid);
					        out.println("You have already voted........"+rs1.getString("voter_id"));
		        }
		        else{
		          ResultSet rs=st.executeQuery("select voter_id,password from VOTERS where voter_id='"+vid+"' and password='"+password+"'");
				  if (rs.next()) { 
					response.sendRedirect("welcome.jsp");
					}
				  else 
			       {
				 	out.print("<h1>Invalid Data!!!</h1>");
					RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
					rd.include(request, response);
			       }	   
			}
				
		}catch(Exception e) {System.out.println(e);}
		
	}
	
}