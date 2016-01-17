package edu.cjl.myschool.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class GradeDaoImpl implements GradeDao {

	public Integer getAllCount() {
		int count = -1;
		try {
			Connection con = DBHelper.getConnection();
			String sql = "select count(1) from grade";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			if(rs.next()){
				count = rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return new Integer(count);
	}

}
