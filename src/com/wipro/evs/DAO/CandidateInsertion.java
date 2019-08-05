package com.wipro.evs.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpSession;

import com.wipro.evs.Intialization.CandidateIntialization;
import com.wipro.evs.Util.DBUtil;

public class CandidateInsertion {
	


	

public int InsertCandidate(CandidateIntialization insert) {
	// TODO Auto-generated method stub
	int count=0;
	try {
		Connection connection = DBUtil.getDBConnection();
		
		
		String query = "insert into candidate(s_no,fullname,gender,party_name,state,constituency,year,election_type,dob,adhar_no,password,email) values(s_no_seq.nextval,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement prstmt = connection.prepareStatement(query);

		prstmt.setString(1, insert.getFullname());
		prstmt.setString(2, insert.getGender_final());
		prstmt.setString(3, insert.getParty_name());
		prstmt.setString(4, insert.getState());
		prstmt.setString(5, insert.getConstituency());
		prstmt.setInt(6, insert.getYear());
		prstmt.setString(7, insert.getElection_type());
		prstmt.setString(8, insert.getDate());
		prstmt.setLong(9,insert.getAdhar_no() );
		prstmt.setString(10, insert.getPassword());
		prstmt.setString(11, insert.getEmail());
		//prstmt.setString(11,"");
		count = prstmt.executeUpdate();

		connection.close();
}
	catch(Exception e)
	{
	System.out.println(e);
	}
	
	return count;
	
	}






public CandidateIntialization ValidateCandidate(CandidateIntialization can) {
	// TODO Auto-generated method stub
	
//	CandidateIntialization bean = new CandidateIntialization();
    
	try {			
		Connection connection = DBUtil.getDBConnection();
		
		String email = can.getEmail();    
		String password = can.getPassword(); 
		
		String query = "select fullname,dob,state,constituency,election_type,year,adhar_no,gender,party_name from candidate where email ='"+email+"'";
		PreparedStatement preparedStatement = connection.prepareStatement(query);
		
		ResultSet rs = preparedStatement.executeQuery();
		if(rs.next()) {
			
		can.setFullname(rs.getString("fullname"));
		can.setGender_final(rs.getString("gender"));
		can.setConstituency(rs.getString("constituency"));
		can.setElection_type(rs.getString("election_type"));
		can.setYear(rs.getInt("year"));
		can.setAdhar_no(rs.getLong("adhar_no"));
		can.setDate(rs.getString("dob"));
		can.setParty_name(rs.getString("party_name"));
		can.setState(rs.getString("state"));
	
		
		
	
		}
		rs.close();
		connection.close();
	} catch (Exception e) {
		System.out.println(e);
	}
	return can;
	
}
/*public int generateCandidateId() throws SQLException
{
	int result = 0;
	try {
	Connection connection = DBUtil.getDBConnection();
	
	
	String query = "select s_no from candidate where voter_id is null";
	PreparedStatement preparedStatement = connection.prepareStatement(query);
	//preparedStatement.setString(1, "");
	
	ResultSet rs = preparedStatement.executeQuery();
	if(rs.next())
	{
	
	int s_no=Integer.parseInt(rs.getString("s_no"));
	  result=s_no;
	
	String queryInside = "update candidate set voter_id = ? where s_no = ?";
	
	PreparedStatement preparedstatement1= connection.prepareStatement(queryInside);
	preparedstatement1.setInt(1, result);
	preparedstatement1.setInt(1, s_no);
	int rs2=preparedstatement1.executeUpdate();
	System.out.println(rs2);
	connection.close();
	}
	}
	catch(Exception e)
	{
		System.out.println(e);
	}

	return result;
}*/


}
