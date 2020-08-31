package jsonObjectsfiles;

import java.util.List;

import beans.ClassCust_Rating;


public class Cust_ratingJson 
{

	int iTotalRecords;
	int iTotalDisplayRecords;
	String sEcho;
	String sColumns;

	List<ClassCust_Rating> aaData;
	
	public int getiTotalRecords()
	{
		return iTotalRecords;
	}
	public void setiTotalRecords(int iTotalRecords) {
		this.iTotalRecords = iTotalRecords;
	}
	public int getiTotalDisplayRecords() {
		return iTotalDisplayRecords;
	}
	public void setiTotalDisplayRecords(int iTotalDisplayRecords) {
		this.iTotalDisplayRecords = iTotalDisplayRecords;
	}
	public String getsEcho() {
		return sEcho;
	}
	public void setsEcho(String sEcho) {
		this.sEcho = sEcho;
	}
	public String getsColumns() {
		return sColumns;
	}
	public void setsColumns(String sColumns) {
		this.sColumns = sColumns;
	}
	public List<ClassCust_Rating> getAaData() {
		return aaData;
	}
	public void setAaData(List<ClassCust_Rating> aaData) {
		this.aaData = aaData;
	}
	
	

}
