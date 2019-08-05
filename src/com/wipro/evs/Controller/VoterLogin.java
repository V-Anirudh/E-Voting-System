package com.wipro.evs.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.wipro.evs.DAO.VoterInsertion;
import com.wipro.evs.Intialization.VoterInitialization;

import com.wipro.evs.Service.VoterService;

/**
 * Servlet implementation class VoterLogin
 */
public class VoterLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
			String email=request.getParameter("email");
			String password= request.getParameter("password");
			VoterInitialization can=new VoterInitialization();
			 can.setEmail(email);;
			 can.setPassword(password);
			VoterInsertion validate=new VoterInsertion();
			VoterInitialization login = validate.ValidateVoter(can);
	
		
			if(login!=null)
			{
				PrintWriter out=response.getWriter();
				 HttpSession session = request.getSession();
				 session.setAttribute("email", email);
				String state=login.getFullname();
				 out.println(state);
				response.sendRedirect("CastingVote.jsp?state="+login.getState()+"&fullname="+login.getFullname()+"&adhar="+login.getAdhar_no()+"&constituency="+login.getConstituency()+"&email="+email);
				
			}
			else
			{
				
				response.sendRedirect("LoginFail.jsp");
			}
	}

}
/*state="+login.getState()+"&fullname="+login.getFullname()+"&adhar="+login.getAdhar_no()+"&constituency="+login.getConstituency()*/