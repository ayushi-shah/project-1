

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

import Form.ConnectionClass;


/**
 * Servlet implementation class change
 */
@WebServlet("/c")
public class change extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public change() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String password=request.getParameter("new_password");
		String cpassword=request.getParameter("c_password");
		String email=request.getParameter("email");
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		if(password.equals(cpassword))
		{
		try {
			Connection c=ConnectionClass.conTest();
			Statement st=c.createStatement();
			ResultSet rs=st.executeQuery("update miniproject set password='"+password+"' where email='"+email+"'");
			while(rs.next())
			{
	
				RequestDispatcher rd=request.getRequestDispatcher("changes_successfull.jsp");
				rd.include(request, response);
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
		else
		{
			out.print("Passwords didnot match.....Please Enter the same Password");
			RequestDispatcher rd=request.getRequestDispatcher("change.jsp");
			rd.include(request, response);
		}
		}
	}


