package myschool.test;

import edu.cjl.myschool.dao.GradeDao;
import edu.cjl.myschool.dao.GradeDaoImpl;
import edu.cjl.myschool.entity.Grade;
import junit.framework.TestCase;

public class GradeDaoImplTest extends TestCase {
	public void testGetAllCount(){
		GradeDao gdi = new GradeDaoImpl();
		assertEquals(new Integer(3), gdi.getAllCount());
	}
	public void testGetGradesWithPage(){
		GradeDao gdi = new GradeDaoImpl();
		assertEquals(2, gdi.getGradesWithPage(1, 2).size()); 
	}
	public void testAdd(){
		GradeDao gdi = new GradeDaoImpl();
		assertEquals(true, gdi.add(new Grade("y4")));
	}
	
	public void testUpdate(){
		GradeDao gdi = new GradeDaoImpl();
		assertEquals(true, gdi.update(new Grade(22,"y10")));
	}
	
	public void testGetOneGrade(){
		GradeDao gdi = new GradeDaoImpl();
		assertEquals(true, gdi.getOneGrade(1)!=null);
	}
}
