package beans;

public class ClassCust_reviews 
{
	
	String cust_id,reviews,prod_id,date;
	public void setCustId(String cust_id)
	{
		this.cust_id=cust_id;
	}
	public void setRating(String reviews)
	{
		this.reviews=reviews;
	}
	public void setProdId(String prod_id)
	{
		this.prod_id=prod_id;
	}
	public void setDate(String date)
	{
		this.date=date;
	}
	
	public String getCustId()
	{
		return cust_id;
	}
	public String getRating()
	{
		return reviews;
	}
	public String getProdId()
	{
		return prod_id;
	}
	public String getDate()
	{
		return date;
	}

}
