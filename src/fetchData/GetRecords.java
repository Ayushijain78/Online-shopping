package fetchData;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import dao.TableData;

public class GetRecords extends TableData
{
	Connection cn;
	Statement st;
	PreparedStatement pt;
	ResultSet rs;
	int x;
	public GetRecords() throws ClassNotFoundException, SQLException 
	{
		super();
		
	}
	public ResultSet getBrand() throws SQLException
	{
		st=cn.createStatement();
		
		rs=st.executeQuery("select * from brand");
		
				return rs;
	}
	public ResultSet getProducts() throws SQLException
	{
		st=cn.createStatement();
		
		rs=st.executeQuery("select * from product");
		
				return rs;
	}
	
	

}
