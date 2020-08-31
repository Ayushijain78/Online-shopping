package beans;

public class ClassOrderProcessing_register
{
	String ordermast_id,status,date,time,admin_id;
	
	public void setOrdermast(String ordermast)
	{
		this.ordermast_id=ordermast;
	}
	public void setStatus(String status)
	{
		this.status=status;
	}
	public void setDate(String date)
	{
		this.date=date;
	}
	public void setTime(String time)
	{
		this.time=time;
	}
	public void setAdminId(String adminId)
	{
		this.admin_id=adminId;
	}
	
	
	
	public String getOrdermast()
	{
		return ordermast_id;
	}
	public String getStatus()
	{
		return status;
	}
	public String getDate()
	{
		return date;
	}
	public  String getTime()
	{
		return time;
	}
	public String getAdminId()
	{
		return admin_id;
	}


}
