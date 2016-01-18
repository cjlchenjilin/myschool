package myschool.test;

import edu.cjl.myschool.dao.GradeDao;
import edu.cjl.myschool.dao.GradeDaoImpl;
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
}
