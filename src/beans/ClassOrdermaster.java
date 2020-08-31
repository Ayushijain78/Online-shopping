package beans;

public class ClassOrdermaster
{
	String id,date,cust_id,total_product,total_amount,status,payment_rec,mode_of_payment;
	public void setDate(String date)
	{
		this.date=date;
	}
	public void setId(String id)
	{
		this.id=id;
	}
	public String getId()
	{
		return id;
	}
	public void setCustId(String cust_id)
	{
		this.cust_id=cust_id;
	}
	public void setTotalAmount(String amount)
	{
		this.total_amount=amount;
	}
	public void setStatus(String status)
	{
		this.status=status;
	}
	public void setPaymentRec(String paymentrec)
	{
		this.payment_rec=paymentrec;
	}
	public void setModeOfPayement(String mode)
	{
		this.mode_of_payment=mode;
	}
	public void setTotalProd(String prod)
	{
		this.total_product=prod;
	}
	
	
	
	
	
	public String getDate()
	{
		return date;
	}
	
	public String getCustId()
	{
			return cust_id;
	}
	public String getTotalAmount()
	{
			return total_amount;
	}
	public String getStatus()
	{
			return status;
	}
	public String getPaymentRec()
	{
			return payment_rec;
	}
	public String getModeOfPayement()
	{
		return mode_of_payment;
	}
	public String getTotalProd()
	{
			return total_product;
	}
	
	
	
}
