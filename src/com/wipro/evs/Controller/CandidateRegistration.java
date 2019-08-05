package com.wipro.evs.Controller;

import java.io.IOException;



import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.wipro.evs.Intialization.CandidateIntialization;
import com.wipro.evs.Service.CandidateService;
/**
 * Servlet implementation class CandidateReistration
 */
public class CandidateRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String trigerFrom = request.getParameter("submit");
		if(trigerFrom.equals("Submit Form"))
		{
			
			String fullname=request.getParameter("name");
			String gender_final=request.getParameter("gender");
			String email=request.getParameter("email");
			String party_name=request.getParameter("party_name");
			String state=request.getParameter("state");
			
			String constituency=request.getParameter("city");
			
			
			int year=Integer.parseInt(request.getParameter("year"));
			String election_type=request.getParameter("election");
			String date=request.getParameter("birth_date");
			long adhar_no=Long.parseLong(request.getParameter("adhar_no"));
	         String password=request.getParameter("password");
	         
	         CandidateIntialization candidate=new CandidateIntialization();
	         candidate.setFullname(fullname);
	         candidate.setGender_final(gender_final);
	         candidate.setEmail(email);
	         candidate.setParty_name(party_name);
	         candidate.setState(state);
	         candidate.setConstituency(constituency);
	         candidate.setYear(year);
	         candidate.setElection_type(election_type);
	         candidate.setDate(date);
	         candidate.setAdhar_no(adhar_no);
	         candidate.setPassword(password);
	         CandidateService service=new CandidateService();
	         
	        String status=service.candidateRegister(candidate);
	        if(status.equals("Success"))
			{
	        	
	        
				
					response.sendRedirect("CandidateSuccess.jsp");
				
				
			}
			else
			{
				response.sendRedirect("InsertFail.jsp");	
			}
	         
			
		}
		
		

	}

}
