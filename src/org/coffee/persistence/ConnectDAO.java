package org.coffee.persistence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

abstract class ConnectDAO implements SQLExecutor{
	
	protected Connection con = null;
	protected PreparedStatement pstmt = null;
	protected ResultSet rs = null;

	public void execute() throws Exception {

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@192.168.0.4:1521:XE", "bit88c", "bit88c");

			doExecute();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {try {rs.close();} catch (Exception e) {}}
			if (pstmt != null) {try {pstmt.close();} catch (Exception e) {}}
			if (con != null) {try {con.close();} catch (Exception e) {}}
			

		}
		
	}
}
