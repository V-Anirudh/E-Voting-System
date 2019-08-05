package com.wipro.evs.Service;

import com.wipro.evs.Intialization.CandidateIntialization;
import com.wipro.evs.Intialization.VoterInitialization;
import com.wipro.evs.DAO.CandidateInsertion;
import com.wipro.evs.DAO.VoterInsertion;

public class VoterService{
	

	 public String insertVoter(VoterInitialization voter) {
		 
		   String status = "";
		   VoterInsertion votr =new VoterInsertion();
		   	int count=votr.voterInsert(voter);
		   
		   if(count ==  1)
			   status = "Success";
		   else
			   status = "Fail";
		   
			   
		   return status;
	
	 }
	 
	/*public VoterInitialization findVoter(VoterInitialization can) {
		// TODO Auto-generated method stub
		VoterInsertion auth=new VoterInsertion();
		VoterInitialization search=auth.ValidateVoter(can);
		//String state=search.getState();

		
		return search;
	}*/
	 
	 
}
