package myschool.test;

import java.sql.SQLException;
import edu.cjl.myschool.dao.DBHelper;
import junit.framework.TestCase;

public class DBHelperTest extends TestCase {
	
	public void testGetConnection() throws SQLException{
		DBHelper dbh = new DBHelper();
		assertEquals(true, dbh.getConnection()!=null);
	}
}
