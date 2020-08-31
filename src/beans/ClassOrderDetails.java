package beans;

public class ClassOrderDetails 
{
	int ordmast_id,prod_id,qty;
	double discount,price,netamount;
	
	public void setOrdmastId(int ordmast_id)
	{
		this.ordmast_id=ordmast_id;
	}
	public void setProdId(int prod_id)
	{
		this.prod_id=prod_id;
	}
	public void setPrice(double price)
	{
		this.price=price;
	}
	public void setQty(int qty)
	{
		this.qty=qty;
	}
	public void setDiscount(double discount)
	{
		this.discount=discount;
	}
	public void setNetAmount(double netamt)
	{
		this.netamount=netamt;
	}
	
	
	
	public int setOrdmastId()
	{
		return ordmast_id;
	}
	public int setProdId()
	{
		return prod_id;
	}
	public double setPrice()
	{
		return price;
	}
	public int setQty()
	{
		return qty;
	}
	public double getDiscount()
	{
		return discount;
	}
	public double getNetAmount()
	{
		return netamount;
	}
}
