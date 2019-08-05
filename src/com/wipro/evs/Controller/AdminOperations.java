package com.wipro.evs.Controller;

import java.io.IOException;

import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.wipro.evs.DAO.AdminDAO;
import com.wipro.evs.Intialization.AdminInitialization;


import com.wipro.evs.Util.DBUtil;



/**
 * Servlet implementation class AdminOperations
 */
public class AdminOperations extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AdminOperations() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
			
			String username=request.getParameter("username");
			String password=request.getParameter("pass");
		
			
			
			String sql ="select * from admin where username='"+username+"' and password='"+password+"'";
			
			
			
			
				AdminInitialization can=new AdminInitialization();
				can.setUsername(username);
				can.setPassword(password);
				
				AdminDAO d=new AdminDAO();
				try
				{
					ResultSet rs=d.validate(can, sql);
			
					if(rs.next())
					{
						 HttpSession session = request.getSession();
						 session.setAttribute("username", username);
						response.sendRedirect("AdminPage.jsp");
					}
					else
					{
						response.sendRedirect("Adminlogin.jsp");
					}
				}
				catch(Exception e)
				{
					e.printStackTrace();
				}
			}
			
			
			
		}
		
		
		
		
		
		
	


package com.wipro.evs.Controller;

import java.io.IOException;

import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.wipro.evs.DAO.AdminDAO;
import com.wipro.evs.Intialization.AdminInitialization;


import com.wipro.evs.Util.DBUtil;



/**
 * Servlet implementation class AdminOperations
 */
public class AdminOperations extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AdminOperations() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
			
			String username=request.getParameter("username");
			String password=request.getParameter("pass");
		
			
			
			String sql ="select * from admin where username='"+username+"' and password='"+password+"'";
			
			
			
			
				AdminInitialization can=new AdminInitialization();
				can.setUsername(username);
				can.setPassword(password);
				
				AdminDAO d=new AdminDAO();
				try
				{
					ResultSet rs=d.validate(can, sql);
			
					if(rs.next())
					{
						 HttpSession session = request.getSession();
						 session.setAttribute("username", username);
						response.sendRedirect("AdminPage.jsp");
					}
					else
					{
						response.sendRedirect("Adminlogin.jsp");
					}
				}
				catch(Exception e)
				{
					e.printStackTrace();
				}
			}
			
			
			
		}
		
		
		
		
		
		
	


