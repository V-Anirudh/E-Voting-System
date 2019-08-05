package com.wipro.evs.DAO;

import java.sql.*;

import com.wipro.evs.Util.DBUtil;

import com.wipro.evs.Intialization.VoterInitialization;

public class VoterInsertion {
	
	

	public int voterInsert(VoterInitialization voter) {
		// TODO Auto-generated method stub
		int count=0;
	
		try {
			int generatedkey=0;
		Connection connection = DBUtil.getDBConnection();
		String query = "insert into voter values(s_no_sequence.nextval,?,?,?,?,?,?,?,?,?)";
		PreparedStatement preparedStatement = connection.prepareStatement(query);
		preparedStatement.setString(1, voter.getFullname());
		preparedStatement.setString(2, voter.getEmail());
		preparedStatement.setString(3, voter.getGender_final());
		preparedStatement.setString(4, voter.getAddress());
		preparedStatement.setString(5, voter.getState());
		preparedStatement.setString(6, voter.getConstituency());
		preparedStatement.setString(7, voter.getDate());
		preparedStatement.setString(8, voter.getAdhar_no());
		preparedStatement.setString(9, voter.getPassword());
		count = preparedStatement.executeUpdate();
		 ResultSet rs=preparedStatement.getGeneratedKeys();
		    if (rs.next()) {
		       generatedkey=rs.getInt(1);   
		               System.out.println("Auto Generated Primary Key " + generatedkey); 
		    }
		
		} 
		catch (SQLException e) {
		
		System.out.println(e);
		}

		return count;
		
	}


	public VoterInitialization ValidateVoter(VoterInitialization can) {
		// TODO Auto-generated method stub
		VoterInitialization bean = null;
		try {			
			Connection connection = DBUtil.getDBConnection();
			Statement stmt=connection.createStatement();
			String email = can.getEmail();    
			String b = can.getPassword(); 
			System.out.println(email);
			
			String query = "select s_no,full_name,adhar_no,state,constituency from voter where email='"+email+"'" ;
			PreparedStatement preparedStatement = connection.prepareStatement(query);
			/*preparedStatement.setString(1, email);
			preparedStatement.setString(2, b);*/
			ResultSet rs = preparedStatement.executeQuery();
			
			if(rs.next()) {
				System.out.println(rs.getString("full_name"));
			can.setFullname(rs.getString("full_name"));
		
			can.setAdhar_no(rs.getString("adhar_no"));
			can.setState(rs.getString("state"));
			can.setConstituency(rs.getString("constituency"));
			int id=rs.getInt("s_no");
			System.out.println(id);
			}
			
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return can;
	}

	
	
	

}
