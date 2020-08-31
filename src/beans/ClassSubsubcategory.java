package beans;

public class ClassSubsubcategory
{
	String id,cat_id,subcategory_id,active,subsubcatname;
	
	
	
	public void setId(String id)
	{
		this.id=id;
	}
	public String getId()
	{
		return id;
	}
	public void setCatid(String cat_id)
	{
		this.cat_id=cat_id;
		
	}
	public void setSubCategory_id(String subcategory)
	{
		this.subcategory_id=subcategory;
	}
	public void setActive(String active)
	{
		this.active=active;
	}
	public void setSubsubcategoryname(String subsubcategory)
	{
		this.subsubcatname=subsubcategory;
	}
	
	public String getCatid()
	{
		return cat_id;
	}
	public String getSubCategory_id()
	{
		return subcategory_id;
	}
	public String getActive()
	{
		return active;
	}
	
	public String getSubsubcategoryname()
	{
		return subsubcatname;
	}
	

}
