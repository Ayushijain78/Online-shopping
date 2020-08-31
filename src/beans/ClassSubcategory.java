package beans;

public class ClassSubcategory
{
	String id,cat_id,subcategory,active;
	
	public void setCatid(String cat_id)
	{
		this.cat_id=cat_id;
		
	}
	public void setId(String id)
	{
		this.id=id;
		
	}
	public String getId()
	{
		return id;
	}
	public void setSubCategory(String subcategory)
	{
		this.subcategory=subcategory;
	}
	public void setActive(String active)
	{
		this.active=active;
	}
	
	
	public String getCatid()
	{
		return cat_id;
	}
	public String getSubCategory()
	{
		return subcategory;
	}
	public String getActive()
	{
		return active;
	}
	

}
