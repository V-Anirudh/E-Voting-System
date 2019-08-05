package com.wipro.evs.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wipro.evs.Intialization.VoterInitialization;
import com.wipro.evs.Service.VoterService;

public class VoterRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		String trigerFrom = request.getParameter("submit");
		if(trigerFrom.equals("Submit Form"))
		{
			String fullname=request.getParameter("name");
			
			String email=request.getParameter("email");
			
			String address=request.getParameter("address");
			
			
			String gender_final=request.getParameter("gender");
		PrintWriter out=response.getWriter();
		out.println(gender_final);
			
			String state=request.getParameter("state");
			
			String constituency=request.getParameter("city");
			String date=request.getParameter("birth_date");
			
			
		String adhar_no=request.getParameter("adhar_no");
         String password=request.getParameter("password");
         
         VoterInitialization voter=new VoterInitialization();
         voter.setFullname(fullname);
         voter.setEmail(email);
         voter.setAddress(address);
         voter.setGender_final(gender_final);
         voter.setState(state);
         voter.setConstituency(constituency);
		 voter.setDate(date);
		 voter.setAdhar_no(adhar_no);
		 voter.setPassword(password);
		 VoterService voterservice=new VoterService();
		 String status = voterservice.insertVoter(voter); 
		 
		if(status.equals("Success"))
		{
			response.sendRedirect("VoterSuccess.jsp");
		}
		else
		{
			response.sendRedirect("InsertFail.jsp");	
		}
         
		}
		
		
	}

}
