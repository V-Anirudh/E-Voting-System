package com.wipro.evs.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wipro.evs.Util.DBUtil;

/**
 * Servlet implementation class VoteCount
 */
public class VoteCount extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String voter_id = request.getParameter("voterid");
            String party = request.getParameter("party");
         
  
         
            try {
                
            	Connection connection = DBUtil.getDBConnection();
            	Statement stmt = connection.createStatement();
                 out.println(party);
                 //out.println(voter_card_number);
               // stmt.executeUpdate("insert into temp_voter_card_number(voter_card_number)values('"+voter_card_number+"')");
                stmt.executeUpdate("insert into vote_count(voter_id,party)values ('"+voter_id+"','"+party+"')");
                // out.println(parties);
            
                response.sendRedirect("HomePage.jsp");
                
            } catch (SQLException ex) {
            	response.sendRedirect("CheckVoter.jsp");
                System.out.println(ex);
            }
		
		
		
	}

	}
}
