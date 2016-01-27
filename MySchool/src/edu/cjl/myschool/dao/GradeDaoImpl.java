package edu.cjl.myschool.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import edu.cjl.myschool.entity.Grade;

public class GradeDaoImpl implements GradeDao {

	public Integer getAllCount() {
		int count = -1;
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs = null;
		try {
			con = DBHelper.getConnection();
			String sql = "select count(1) from grade";
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()){
				count = rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DBHelper.closeResources(con, ps, rs);
		}
		return new Integer(count);
	}

	public List<Grade> getGradesWithPage(int index,int size) {
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs = null;
		List<Grade> grades = new ArrayList<Grade>();
		try {
			con = DBHelper.getConnection();
			String sql = "select * from grade limit ?,?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, (index-1)*size);
			ps.setInt(2, size);
			rs = ps.executeQuery();
			while(rs.next()){
				Grade grade = new Grade();
				grade.setId(rs.getInt("id"));
				grade.setName(rs.getString("name"));
				grades.add(grade);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBHelper.closeResources(con, ps, rs);
		}
		return grades;
	}

	@Override
	public boolean add(Grade grade) {
		Connection con=null;
		PreparedStatement ps=null;
		boolean flag = true;
		try {
			con = DBHelper.getConnection();
			String sql = "insert into grade(name) values(?)";
			ps = con.prepareStatement(sql);
			ps.setString(1, grade.getName());
			if(ps.executeUpdate()!=1)
				flag = false;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			flag=false;
		}finally{
			DBHelper.closeResources(con, ps, null);
		}
		return flag;
	}

	@Override
	public boolean update(Grade grade) {
		Connection con=null;
		PreparedStatement ps=null;
		boolean flag = true;
		try {
			con = DBHelper.getConnection();
			String sql = "update grade set name = ? where id = ?";
			ps = con.prepareStatement(sql);
			ps.setString(1, grade.getName());
			ps.setInt(2, grade.getId());
			if(ps.executeUpdate()!=1)
				flag = false;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			flag=false;
		}finally{
			DBHelper.closeResources(con, ps, null);
		}
		return flag;
	}

	@Override
	public Grade getOneGrade(int id) {
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs = null;
		Grade grade = null;
		try {
			con = DBHelper.getConnection();
			String sql = "select * from grade where id = ?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			if(rs.next()){
				grade = new Grade();
				grade.setId(rs.getInt("id"));
				grade.setName(rs.getString("name"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBHelper.closeResources(con, ps, rs);
		}
		return grade;
	}

	@Override
	public boolean deleteGrade(int id) {
		Connection con=null;
		PreparedStatement ps=null;
		boolean flag = true;
		try {
			con = DBHelper.getConnection();
			String sql = "delete from grade where id = ?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			if(ps.executeUpdate()!=1)
				flag = false;
		} catch (SQLException e) {
			e.printStackTrace();
			flag=false;
		}finally{
			DBHelper.closeResources(con, ps, null);
		}
		return flag;
	}

}
