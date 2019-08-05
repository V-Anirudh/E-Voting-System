package com.wipro.evs.Service;

import com.wipro.evs.Intialization.CandidateIntialization;



import com.wipro.evs.DAO.CandidateInsertion;;

public class CandidateService {

	public String candidateRegister(CandidateIntialization insert)
	{
		 String status = "";
		   CandidateInsertion can =new CandidateInsertion();
		   	int count=can.InsertCandidate(insert);
		   
		   if(count ==  1)
			   status = "Success";
		   else
			   status = "Fail";
		   
			   
		   return status;
	}
	
	public CandidateIntialization findCandidate(CandidateIntialization can)
	
	{
		
		CandidateInsertion auth=new CandidateInsertion();
		CandidateIntialization search=auth.ValidateCandidate(can);
		String state=search.getState();
		
		
		return search;
	}


	
	
	
}
