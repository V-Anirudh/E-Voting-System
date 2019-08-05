package com.wipro.evs.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.wipro.evs.Intialization.CandidateIntialization;
import com.wipro.evs.Service.CandidateService;

/**
 * Servlet implementation class CandidateLogin
 */
public class CandidateLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
	
			String email=request.getParameter("email");
			String password= request.getParameter("password");
			 CandidateIntialization can=new CandidateIntialization();
			 can.setEmail(email);
			 can.setPassword(password);
			CandidateService validate=new CandidateService();
			CandidateIntialization login = validate.findCandidate(can);
	
		
			if(login!=null)
			{
				 HttpSession session = request.getSession();
				 session.setAttribute("email", email);
				PrintWriter out=response.getWriter();
				//response.sendRedirect("CastingVote.jsp?state=\"+login.getState()+\"&gender=\"+login.getGender_final()+\"&partyname=\"+login.getParty_name()");
				response.sendRedirect("CandidatePage.jsp?state="+login.getState()+"&gender="+login.getGender_final()+"&partyname="+login.getParty_name()+"&year="+login.getYear()+"&constituency="+login.getConstituency()+"&dob="+login.getDate()+"&election="+login.getElection_type()+"&adhar="+login.getAdhar_no()+"&fullname="+login.getFullname()+"&email="+email+"&password="+password);
				
			}
			else
			{
				
				response.sendRedirect("LoginFail.jsp");
			}
			
		}
		}
		
		
		
		
	


