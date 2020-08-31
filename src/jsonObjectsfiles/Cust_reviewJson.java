package jsonObjectsfiles;

import java.util.List;

import beans.ClassCust_Rating;
import beans.ClassCust_reviews;
import beans.ClassProduct;

public class Cust_reviewJson 
{

	int iTotalRecords;
	int iTotalDisplayRecords;
	String sEcho;
	String sColumns;

	List<ClassCust_reviews> aaData;
	
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
	public List<ClassCust_reviews> getAaData() {
		return aaData;
	}
	public void setAaData(List<ClassCust_reviews> aaData) {
		this.aaData = aaData;
	}
	
	

}
