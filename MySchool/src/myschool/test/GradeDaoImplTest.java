package myschool.test;

import edu.cjl.myschool.dao.GradeDaoImpl;
import junit.framework.TestCase;

public class GradeDaoImplTest extends TestCase {
	public void testGetAllCount(){
		GradeDaoImpl gdi = new GradeDaoImpl();
		assertEquals(new Integer(3), gdi.getAllCount());
	}
}
