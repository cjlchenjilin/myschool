package edu.cjl.myschool.dao;

import java.util.List;

import edu.cjl.myschool.entity.Grade;

public interface GradeDao {
	public Integer getAllCount();
	public List<Grade> getGradesWithPage(int index,int size);
	public boolean add(Grade grade);
	public boolean update(Grade grade);
	public Grade getOneGrade(int id);
	public boolean deleteGrade(int id);
}
