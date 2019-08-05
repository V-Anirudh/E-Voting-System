package com.wipro.evs.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.wipro.evs.Intialization.AdminInitialization;
import com.wipro.evs.Util.DBUtil;

public class AdminDAO {



	public ResultSet validate(AdminInitialization can, String sql) throws SQLException {
		// TODO Auto-generated method stub
		Connection connection = DBUtil.getDBConnection();
		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		return rs;
	}
	
	
	

}
