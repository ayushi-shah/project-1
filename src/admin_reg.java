

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Form.ConnectionClass;

/**
 * Servlet implementation class admin_reg
 */
@WebServlet("/s2")
public class admin_reg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public admin_reg() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=request.getParameter("n1");
		String pass=request.getParameter("p1");
		String email=request.getParameter("e1");
		response.setContentType("text/html");
		Connection c=null;
		try {
		       c=ConnectionClass.conTest();
		       PreparedStatement pst=c.prepareStatement("insert into ADMIN values(?,?,?)");
		       pst.setString(1,name);
		       pst.setString(2,pass);
		       pst.setString(3,email);
		       int i=pst.executeUpdate();
		       if(i>0)
		       {
		    	   response.sendRedirect("admin_login.jsp");
		       }
		     }catch(Exception e)
		{ System.out.println(e); }
		 finally{ 
   	      try {
   	      c.close();
   	     }catch(SQLException e)
              {
   	         e.printStackTrace();	
               } 
         }
	}



	}


