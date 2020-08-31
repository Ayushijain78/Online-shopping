package beans;

public class ClassPayment_recieved
{
	String ordmastId,reciept_date,mode,card_details,amount;
	
	public void setOrdmast(String ordmast)
	{
		this.ordmastId=ordmast;
	}
	public void setRecieptDate(String reciept)
	{
		this.reciept_date=reciept;
	}
	public void setMode(String mode)
	{
		this.mode=mode;
	}
	public void setCardDetails(String cardDetails)
	{
		this.card_details=cardDetails;
	}
	public void setAmount(String amount)
	{
		this.amount=amount;
	}
	
	
	
	public String getOrdmast()
	{
		return ordmastId;
	}
	public String getRecieptDate()
	{
		return reciept_date;
	}
	public String getMode()
	{
		return mode;
	}
	public String getCardDetails()
	{
		return card_details;
	}
	public String getAmount()
	{
		return amount;
	}
	
}
