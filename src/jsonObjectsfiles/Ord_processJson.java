package jsonObjectsfiles;

import java.util.List;

import beans.ClassOrderProcessing_register;


public class Ord_processJson {

	int iTotalRecords;
	int iTotalDisplayRecords;
	String sEcho;
	String sColumns;

	List<ClassOrderProcessing_register> aaData;
	
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
	public List<ClassOrderProcessing_register> getAaData() {
		return aaData;
	}
	public void setAaData(List<ClassOrderProcessing_register> aaData) {
		this.aaData = aaData;
	}
	
	
}
