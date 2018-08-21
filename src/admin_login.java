

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
 * Servlet implementation class admin_login
 */
@WebServlet("/a1")
public class admin_login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public admin_login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("n1");
		String pass=request.getParameter("p1");
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		//Create one session
		HttpSession s=request.getSession();
		s.setAttribute("name", name);
		try {
			Connection c=ConnectionClass.conTest();
			Statement st=c.createStatement();
			ResultSet rs=st.executeQuery("select name,password from ADMIN where name='"+name+"' and password='"+pass+"'");
			if (rs.next()) { 
				response.sendRedirect("WelcomeAdmin1.jsp");
				
			}
		else 
		{
				out.print("<h1>Invalid Username or Password</h1>");
				RequestDispatcher rd=request.getRequestDispatcher("admin_login.jsp");
				rd.include(request, response);
			}
			
			
		}catch(Exception e) {System.out.println(e);}
		
	}

}